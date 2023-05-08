`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:46:41 05/01/2023
// Design Name:   ALU
// Module Name:   /csehome/jun7332568/ALU/ALUtb.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUtb();
  reg M, S1, S0;
  reg [1:0] A;
  wire result;
  integer i;
  
  ALU UUT (
    .M(M),
    .S1(S1),
    .S0(S0),
    .A(A),
    .result(result)
  );

  initial begin
    $dumpfile("ALUtb.vcd");
    $dumpvars(0, ALUtb);
    for(i = 0; i<32;i = i+1)
        begin
        M = i[0];
        S1 = i[1];
        S0 = i[2];
        A[0] = i[3];
        A[1] = i[4];
        #10;
        end
  end
endmodule

