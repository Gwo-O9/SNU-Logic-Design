module klingon_tb_struct();
  klingon_struct dut(
    .I(I),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .G(G)
  );

  reg [3:0] I;
  wire A, B, C, D, E, F, G;
  integer i;
  initial begin
    $dumpfile("klingon_tb_struct.vcd");
    $dumpvars(0, klingon_tb_struct);
    for (i = 0; i<=16; i = i+1) 
    begin
      I = i;
      #10;
    end
  end

endmodule
// iverilog -o klingon_tb_struct klingon_struct.v klingon_tb_struct.v
// vvp klingon_tb_struct -vcd
// open -a gtkwave klingon_tb_struct.vcd
