`timescale 1ns / 1ps

module bcd_func(
    input [3:0] I,
    output reg [6:0] seg
    );
	always @ (I)
	begin
		case (I)
			0 : seg = 7'b1111110;
			1 : seg = 7'b0110000;
			2 : seg = 7'b1101101;
			3 : seg = 7'b1111001;
			4 : seg = 7'b0110011;
			5 : seg = 7'b1011011;
			6 : seg = 7'b1011111;
			7 : seg = 7'b1110000;
			8 : seg = 7'b1111111;
			9 : seg = 7'b1110011;
			default : seg = 7'b0000000;
		endcase
	end
					
endmodule
