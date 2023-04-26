module klingon_tb_dataf();
  klingon_dataf dut(
    .I(I),
    .O(O)
  );

  reg [3:0] I;
  integer i;
  initial begin
    $dumpfile("klingon_tb_dataf.vcd");
    $dumpvars(0, klingon_tb_dataf);
    for (i = 0; i<=16; i = i+1) 
    begin
      I = i;
      #10;
    end
  end

endmodule
// iverilog -o tb_dataf dataf.v tb_dataf.v
// vvp tb_dataf -vcd
// open -a gtkwave tb_dataf.vcd
