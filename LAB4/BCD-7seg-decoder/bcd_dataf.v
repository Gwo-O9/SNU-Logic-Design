`timescale 1ns / 1ps

module bcd_dataf(
    input I0,
    input I1,
    input I2,
    input I3,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G
    );
	 
	 wire [3:0] sel;
	 assign sel = {I3, I2, I1, I0}
	 

endmodule
