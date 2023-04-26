`timescale 1ns / 1ps

module bcd_tb_dataf;

	// Inputs
	reg I0;
	reg I1;
	reg I2;
	reg I3;

	// Outputs
	wire [6:0] O;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	bcd_dataf uut (
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.O(O)
	);

	initial begin
		for (i=0; i<16; i=i+1) 
		begin 
			I0 = i[0];
			I1 = i[1];
			I2 = i[2];
			I3 = i[3];
			#10;
		end
		// Add stimulus here
	end
      
endmodule

