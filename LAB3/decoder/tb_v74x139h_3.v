`timescale 1ns/1ns

module tb_v74x139h_3;

    reg G_L;
    reg A;
    reg B;

    wire [3:0] Y_L;

    func_v74x139h uut (
        .G_L(G_L),
        .A(A),
        .B(B),
        .Y_L(Y_L)
    );
    initial begin
        G_L = 0;
        A = 0;
        B = 0;

        #100 G_L = 0; A = 0; B = 1;
        #100 G_L = 0; A = 1; B = 0;
        #100 G_L = 0; A = 1; B = 1;
        #100 G_L = 1; A = 0; B = 0;
        #100 G_L = 1; A = 0; B = 1;
        #100 G_L = 1; A = 1; B = 0;
        #100 G_L = 1; A = 1; B = 1;
        #100;
    end

endmodule
