`timescale 1ns / 1ps
module sign_extension(
	input [1:0] in,
	output [7:0] out
    );
	 reg[7:0] temp_out;
	 assign out = temp_out;
	 
	 always @(*) begin
		 case (in)
			2'b00: temp_out = 8'b00000000;
			2'b01: temp_out = 8'b00000001;
			2'b10: temp_out = 8'b11111110;
			2'b11: temp_out = 8'b11111111;
		 endcase
  end

endmodule
