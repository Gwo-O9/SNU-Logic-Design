`timescale 1ns / 1ps
module ALU(
	input [7:0] rs1,
	input [7:0] rs2,
	input ALUOp,
	output reg[7:0] out
    );
	 
	 always@(rs1, rs2, ALUOp)
	 begin
		case(ALUOp)
			1'b1: out = rs1 + rs2;
			1'b0: out = rs1 + rs2;
		endcase
	 end
endmodule
