module klingon_tb_func();
  klingon_func dut(
    .I(I),
    .O(O)
  );

  reg [3:0] I;
  integer i;
  initial begin
    $dumpfile("klingon_tb_func.vcd");
    $dumpvars(0, klingon_tb_func);
    for (i = 0; i<=16; i = i+1) 
    begin
      I = i;
      #10;
    end
  end

endmodule
// iverilog -o tb_func func.v tb_func.v
// vvp tb_func -vcd
// open -a gtkwave tb_func.vcd
