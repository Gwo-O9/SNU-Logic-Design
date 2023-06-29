`timescale 1ns / 1ps
module freq_divider(
	input reset,
	input clk,
	output reg clkout
    );
	 reg[31:0] cnt;
	 always@ (posedge clk or posedge reset) begin
		if(reset) begin
			cnt <= 32'd0;
			clkout <= 1'b1;
		end
		else if (cnt == 32'd25000000) begin
			cnt <= 32'd0;
			clkout <= ~clkout;
		end
		else begin
			cnt <= cnt + 1;
		end
	end

endmodule