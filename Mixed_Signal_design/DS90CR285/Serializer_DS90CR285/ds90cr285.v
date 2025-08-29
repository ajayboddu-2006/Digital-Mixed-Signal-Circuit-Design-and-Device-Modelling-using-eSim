module ds90cr285(
    input wire clk_in,
    input wire clk_in_7x,
    input wire reset,
    input wire [27:0] data_in,
    output reg [3:0] lvds_data_p,
    output reg [3:0] lvds_data_n,
    output wire clk_out_p,
    output wire clk_out_n
);

    reg [6:0] ch0, ch1, ch2, ch3;
    reg [2:0] bit_idx;
    reg load;

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            ch0 <= 7'd0;
            ch1 <= 7'd0;
            ch2 <= 7'd0;
            ch3 <= 7'd0;
            bit_idx <= 3'd0;
            load <= 1'b0;
        end else begin
            ch0 <= data_in[6:0];
            ch1 <= data_in[13:7];
            ch2 <= data_in[20:14];
            ch3 <= data_in[27:21];
            bit_idx <= 3'd0;
            load <= 1'b1;
        end
    end

    always @(posedge clk_in_7x or posedge reset) begin
        if (reset) begin
            lvds_data_p <= 4'b0000;
            lvds_data_n <= 4'b1111;
            bit_idx <= 3'd0;
            load <= 1'b0;
        end else if (load) begin
            lvds_data_p[0] <= ch0[6 - bit_idx];
            lvds_data_p[1] <= ch1[6 - bit_idx];
            lvds_data_p[2] <= ch2[6 - bit_idx];
            lvds_data_p[3] <= ch3[6 - bit_idx];

            lvds_data_n[0] <= ~ch0[6 - bit_idx];
            lvds_data_n[1] <= ~ch1[6 - bit_idx];
            lvds_data_n[2] <= ~ch2[6 - bit_idx];
            lvds_data_n[3] <= ~ch3[6 - bit_idx];


            if (bit_idx == 3'd6) begin
                load <= 1'b0;      
            end else begin
                bit_idx <= bit_idx + 1;
            end
        end
    end

    assign clk_out_p = clk_in_7x;
    assign clk_out_n = ~clk_in_7x;

endmodule