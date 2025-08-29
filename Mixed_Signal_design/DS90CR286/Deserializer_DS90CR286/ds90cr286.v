module ds90cr286(
    input wire clk_in,
    input wire clk_lvds_p,
  	input wire clk_lvds_n,
    input wire reset,
    input wire [3:0] lvds_data_p,
  	input wire [3:0] lvds_data_n,
    output reg [27:0] data_out,
    output wire clk_out
);

    reg [6:0] ch0, ch1, ch2, ch3;
    reg [2:0] bit_idx;
    reg load;  // acts as "start receiving" flag

    // Raise 'load' on clk_in's posedge (indicates valid data begins)
    always @(posedge clk_in or posedge reset) begin
        if (reset)
            load <= 1'b0;
        else
            load <= 1'b1;
    end

    // LVDS deserialization starts *only* after load is set
    always @(posedge clk_lvds_p or posedge reset) begin
        if (reset) begin
            bit_idx <= 3'd0;
            ch0 <= 7'd0;
            ch1 <= 7'd0;
            ch2 <= 7'd0;
            ch3 <= 7'd0;
        end else if (load) begin
            ch0[6 - bit_idx] <= lvds_data_p[0];
            ch1[6 - bit_idx] <= lvds_data_p[1];
            ch2[6 - bit_idx] <= lvds_data_p[2];
            ch3[6 - bit_idx] <= lvds_data_p[3];

            if (bit_idx == 3'd6)
                bit_idx <= 3'd0;
            else
                bit_idx <= bit_idx + 1;
        end
    end

    // Latch final data when 7 bits are captured (bit_idx wraps to 0)
    always @(posedge clk_in or posedge reset) begin
        if (reset)
            data_out <= 28'd0;
        else if (bit_idx == 3'd0 && load)  // bit_idx wrapped: 7 bits done
            data_out <= {ch3, ch2, ch1, ch0};
    end

    assign clk_out = clk_in;

endmodule
