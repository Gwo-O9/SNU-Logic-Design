module klingon_func(
  input [3:0] I,
  output [6:0] O
);

  reg [6:0] seg_out;

  always @(*) begin
    case (I)
      4'b0000: seg_out = 7'b1111110;
      4'b0001: seg_out = 7'b1000000;
      4'b0010: seg_out = 7'b1000001;
      4'b0011: seg_out = 7'b1001001;
      4'b0100: seg_out = 7'b0100011;
      4'b0101: seg_out = 7'b0011101;
      4'b0110: seg_out = 7'b0100101;
      4'b0111: seg_out = 7'b0000111;
      4'b1000: seg_out = 7'b0100111;
      4'b1001: seg_out = 7'b0101111;
      default: seg_out = 7'b0000000;
    endcase
  end

  assign O = seg_out;

endmodule
