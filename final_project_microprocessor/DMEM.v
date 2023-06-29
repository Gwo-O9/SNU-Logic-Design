`timescale 1ns / 1ps

module DMEM(
	input [7:0] addr,
	input [7:0] writeData,
	input MemRead,
	input MemWrite,
	input clk,
	input reset,
	output [7:0] out
    );
	 
	 integer i;
	 reg [7:0]mem[31:0];
	 assign out = mem[addr];
	 
	 always@(posedge clk or posedge reset) begin
		if (reset) begin
			for (i=0;i<16;i = i+1) begin
				mem[i] <= i;
				mem[i+16] <= -i;
			end
		end
		else begin
			if (MemWrite) begin
				mem[addr] <= writeData;
			end
		end
	 end
	 


endmodule
