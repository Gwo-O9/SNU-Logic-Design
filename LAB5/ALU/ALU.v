`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:20 05/01/2023 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(
    input M, S1, S0,
    input [1:0]A,
    output reg result
);

always @(*) begin
  case ({M, S1, S0})
    3'b000: result = A[1];      
    3'b001: result = ~A[1];     
    3'b010: result = A[1]^A[0];      
    3'b011: result = ~(A[1]^A[0]);
    3'b100: result = A[1];
    3'b101: result = ~A[1];
    3'b110: result = A[1] + A[0];
    3'b111: result = ~A[1] + A[0];    
  endcase
end
endmodule
