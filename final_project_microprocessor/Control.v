`timescale 1ns / 1ps
	/*
	This Module decodes input opcode and output proper control signals.
	RegDst
	RegWrite
	ALUSrc
	Branch
	MemRead
	MemWrite
	MemtoReg
	ALUOP
	*/


module Control(
	input [1:0] op,
	output reg [7:0] control
	);
	always@ (*)
	begin
		if (op == 2'b00) begin control = 8'b11000001; end
		else if (op == 2'b01) begin control = 8'b01101010; end
		else if (op == 2'b10) begin control = 8'b00100100; end
		else begin control = 8'b00010000; end
	end
endmodule
