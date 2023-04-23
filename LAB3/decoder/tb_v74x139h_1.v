`timescale 1ns / 1ns

module tb_v74x139h_1;

    reg G_L;
    reg A;
    reg B;

    wire Y0_L;
    wire Y1_L;
    wire Y2_L;
    wire Y3_L;

    dataf_v74x139h uut(
        .G_L(G_L),
        .A(A),
        .B(B),
        .Y_i(Y_i),
        .Y_L(Y_L)
    );

    initial begin
        //Initial value
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

