`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:11 05/01/2023 
// Design Name: 
// Module Name:    ripple_carry_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ripple_carry_adder(
    input a1,
    input a0,
    input b1,
    input b0,
    input c0,
    output c2,
    output s1,
    output s0
    );
	 wire c1;
	 full_adder U1(.cin(c0), .a(a0), .b(b0), .cout(c1), .sum(s0));
	 full_adder U2(.cin(c1), .a(a1), .b(b1), .cout(c2), .sum(s1));


endmodule
