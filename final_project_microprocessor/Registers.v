`timescale 1ns / 1ps
/* 
	rs : indicates 
*/

module Registers(
	input [1:0] rs,
	input [1:0] rt,
	input [1:0] rd,
	input [7:0] writeData,
	input RegWrite,
	input clk,
	input reset,
	output [7:0]readData1,
	output [7:0]readData2,
	output reg [7:0]out
    );
	 
	 integer i;
	 reg [7:0]registers[3:0];
	 assign readData1 = registers[rs];
	 assign readData2 = registers[rt];
	 
	 always@ (posedge clk or posedge reset) begin
		if (reset) begin
			// initialize four registers to zero.
			for (i=0;i<4;i = i+1) begin
				registers[i] <= 0;
			end
			out<=0;
		end
		else begin
			if (RegWrite) begin
				out <= writeData;
				registers[rd] <= writeData;
			end
		end
	 end

endmodule
