`timescale 1ns / 1ns

module struct_v74x139h(
    input G_L,
    input A,
    input B,
    output Y0_L,
    output Y1_L,
    output Y2_L,
    output Y3_L
);
    wire N_A, N_B, N_G;

    not T1(N_G,G_L);
    not T2(N_A,A);
    not T3(N_B,B);
    
    nand T4(Y0_L, N_G, N_A, N_B);
    nand T5(Y1_L, N_G, A, N_B);
    nand T6(Y2_L, N_G, N_A, B);
    nand T7(Y3_L, N_G, A, B);

    initial begin
        $dumpfile("v74x139h.vcd");
        $dumpvars (0, v74x139h) ; 
    end
endmodule


// iverilog -o tb_v74x139h_tb tb_v74x139h.v v74x139h.v
// vvp tb_v74x139h_tb -vcd
// open -a gtkwave v74x139h.vcd