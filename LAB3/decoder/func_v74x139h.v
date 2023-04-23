`timescale 1ns / 1ns

module func_v74x139h(G_L, A, B, Y_L);
    input G_L, A, B;
    output [3:0] Y_L;
    wire G;
    wire [1:0] S;
    reg [3:0] Y;

    assign G = ~G_L;
    assign Y_L = ~Y;
    assign S = {B,A};

    always @(G or S) 
        begin
            if(G==1)
                begin   
                    case(S)
                        2'b00 : Y = 4'b0001;
                        2'b01 : Y = 4'b0010;
                        2'b10 : Y = 4'b0100;
                        2'b11 : Y = 4'b1000;
                        default : Y = 4'b0000;
                    endcase
                end
            else
                begin
                    Y = 4'b0000;
                end
    end

    /*initial begin
        $dumpfile("func_v74x139h.vcd");
        $dumpvars (0, func_v74x139h) ; 
    end*/
endmodule


// iverilog -o func_v74x139h tb_v74x139h_3.v func_v74x139h.v
// vvp func_v74x139h -vcd
// open -a gtkwave func_v74x139h.vcd