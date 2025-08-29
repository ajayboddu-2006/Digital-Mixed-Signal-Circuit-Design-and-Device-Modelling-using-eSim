module FIFO (
    input  wire [8:0] D,
    input  wire       WCLK,
    input  wire       RCLK,
    input  wire       WEN1,   // active low write enable 1
    input  wire       WEN2,   // active low write enable 2 (programming mode)
    input  wire       REN1,   // active low read enable 1
    input  wire       REN2,   // active low read enable 2
    input  wire       OE,
    input  wire       RS,

    output reg  [8:0] Q,
    output reg        EF,
    output reg        FF,
    output reg        PAE,
    output reg        PAF
);

    parameter DEPTH = 256;
    parameter ADDR_WIDTH = 8;

    reg [8:0] mem [0:DEPTH-1];
    reg [ADDR_WIDTH:0] write_ptr, read_ptr;

    // Programmable offsets
    reg [8:0] empty_offset = 9'd7;
    reg [8:0] full_offset  = 9'd7;
    reg [1:0] offset_state = 0;

    wire [ADDR_WIDTH:0] used_words = write_ptr - read_ptr;

    // Reset block (sync to RS posedge)
    always @(posedge RS) begin
        write_ptr    <= 0;
        read_ptr     <= 0;
        Q            <= 9'd0;
        EF           <= 1;
        FF           <= 0;
        PAE          <= 1;
        PAF          <= 0;
        empty_offset <= 9'd7;
        full_offset  <= 9'd7;
        offset_state <= 0;
    end

    // Write logic on WCLK
    always @(posedge WCLK) begin
        if (RS) begin
            write_ptr    <= 0;
            FF           <= 0;
            PAF          <= 0;
            offset_state <= 0;
        end else begin
            if (!WEN2) begin
                // Programming mode for offsets
                case (offset_state)
                    2'd0: empty_offset[7:0] <= D;
                    2'd1: empty_offset[8]   <= D[0];
                    2'd2: full_offset[7:0]  <= D;
                    2'd3: full_offset[8]    <= D[0];
                endcase
                offset_state <= offset_state + 1;
            end else if (!WEN1 && WEN2 && !FF) begin
                mem[write_ptr[ADDR_WIDTH-1:0]] <= D;
                write_ptr <= write_ptr + 1;
            end

            // Update full flags on write clock domain
            FF  <= (used_words >= DEPTH - 1);
            PAF <= (full_offset < DEPTH) ? (used_words >= (DEPTH - full_offset)) : 1'b1;
        end
    end

    // Read logic on RCLK
    always @(posedge RCLK) begin
        if (RS) begin
            read_ptr <= 0;
            Q        <= 9'd0;
            EF       <= 1;
            PAE      <= 1;
        end else begin
            if (!REN1 && !REN2 && !EF) begin
                Q <= OE ? mem[read_ptr[ADDR_WIDTH-1:0]] : 9'd0;
                read_ptr <= read_ptr + 1;
            end

            // Update empty flags on read clock domain
            EF  <= (used_words == 0);
            PAE <= (used_words <= empty_offset);
        end
    end

endmodule