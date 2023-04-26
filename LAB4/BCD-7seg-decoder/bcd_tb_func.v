`timescale 1ns / 1ps

module bcd_tb_func;

	// Inputs
	reg [3:0] I;

	// Outputs
	wire [6:0] seg;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	bcd_func uut (
		.I(I), 
		.seg(seg)
	);

	initial begin
		for(i = 0; i< 16; i = i + 1)
		begin
			I = i;
			#10;
		end
	end
      
endmodule

