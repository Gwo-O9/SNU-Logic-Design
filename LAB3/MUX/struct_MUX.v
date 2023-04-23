`timescale 1ns/ 1ns

module struct_MUX(input [3:0] data_in, input [1:0] sel, output wire data_out);
    wire w1, w2, w3, w4;
    
    and(w1, data_in[0], ~sel[0], ~sel[1]);
    and(w2, data_in[1], sel[0], ~sel[1]);
    and(w3, data_in[2], ~sel[0], sel[1]);
    and(w4, data_in[3], sel[0], sel[1]);
    or(data_out, w1, w2, w3, w4);
    
endmodule

// iverilog -o tb_struct_MUX tb_struct_MUX.v struct_MUX.v
// vvp tb_struct_MUX -vcd
// open -a gtkwave tb_struct_MUX.vcd