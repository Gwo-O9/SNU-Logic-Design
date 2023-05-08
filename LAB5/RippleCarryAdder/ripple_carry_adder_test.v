`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:14:26 05/01/2023
// Design Name:   ripple_carry_adder
// Module Name:   /csehome/jun7332568/ripple_carry_adder/ripple_carry_adder_test.v
// Project Name:  ripple_carry_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_carry_adder_test;

	// Inputs
	reg a1;
	reg a0;
	reg b1;
	reg b0;
	reg c0;
	integer i;
	
	// Outputs
	wire c2;
	wire s1;
	wire s0;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder uut (
		.a1(a1), 
		.a0(a0), 
		.b1(b1), 
		.b0(b0), 
		.c0(c0), 
		.c2(c2), 
		.s1(s1), 
		.s0(s0)
	);
			
	initial begin
		// Initialize Inputs
		for (i=0; i<32; i=i+1)
			begin
				a1 = i[4];
				a0 = i[3];
				b1 = i[2];
				b0 = i[1];
				c0 = i[0];
				#10;
			end
	end
endmodule

