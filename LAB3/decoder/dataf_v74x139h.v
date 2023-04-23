`timescale 1ns/ 1ns

module dataf_v74x139h(G_L, A, B, Y_L);
    input G_L, A, B;
    output [3:0] Y_L;
    wire G;
    wire [3:0] Y_i;
    wire [1:0] S;

    assign G = ~G_L;
    assign S = {B,A};

    assign Y_i = (S == 2'b00) ? 4'b0001 :
                 (S == 2'b01) ? 4'b0010 :
                 (S == 2'b10) ? 4'b0100 :
                 (S == 2'b11) ? 4'b1000 :
                               4'b0000;

    assign Y_L = (G==1) ? ~Y_i : 4'b1111;

    initial begin
        $dumpfile("dataf_v74x139h.vcd");
        $dumpvars (0, dataf_v74x139h) ; 
    end   
endmodule

// iverilog -o dataf_v74x139h tb_v74x139h2.v dataf_v74x139h.v
// vvp dataf_v74x139h -vcd
// open -a gtkwave dataf_v74x139h.vcd