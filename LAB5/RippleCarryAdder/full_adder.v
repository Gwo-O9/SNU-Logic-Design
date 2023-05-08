`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:38 05/01/2023 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input cin,
    input a,
    input b,
    output sum,
    output cout
    );
	 wire c1, s, c2;
	 half_adder U1(.a(a), .b(b), .cout(c1), .sum(s));
	 half_adder U2(.a(cin), .b(s), .cout(c2), .sum(sum));
	 or U3(cout, c2, c1);


endmodule
