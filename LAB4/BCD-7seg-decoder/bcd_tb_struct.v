`timescale 1ns/ 1ns

module bcd_tb_struct;

    bcd_struct uut(.A(A), .B(B), .C(C), .D(D), .Y(Y));

    reg A,B,C,D;
    wire [6:0] Y;

    A = 0; B = 0; C = 0; D = 0; #50;
    A = 0; B = 0; C = 0; D = 1; #50;
    A = 0; B = 0; C = 1; D = 0; #50;
    A = 0; B = 0; C = 1; D = 1; #50;
    A = 0; B = 1; C = 0; D = 0; #50;
    A = 0; B = 1; C = 0; D = 1; #50;
    A = 0; B = 1; C = 1; D = 0; #50;
    A = 0; B = 1; C = 1; D = 1; #50;
    A = 1; B = 0; C = 0; D = 0; #50;
    A = 1; B = 0; C = 0; D = 1; #50;
    A = 1; B = 0; C = 1; D = 0; #50;
    A = 1; B = 0; C = 1; D = 1; #50;
    A = 1; B = 1; C = 0; D = 0; #50;
    A = 1; B = 1; C = 0; D = 1; #50;
    A = 1; B = 1; C = 1; D = 0; #50;
    A = 1; B = 1; C = 1; D = 1; #50;
    

endmodule