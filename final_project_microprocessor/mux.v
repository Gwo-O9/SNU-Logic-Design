`timescale 1ns / 1ps
module Mux
	#(parameter n = 2)
	(
	input [n-1:0]in0,
	input [n-1:0]in1,
	input s,
	output reg[n-1:0] out
    );
	 always@(*)
		begin
			if (s == 1'b1) begin out = in1;end
			else begin out = in0; end
		end
endmodule