`timescale 1ns / 1ns

module decoder_2to4(G_L, A, B, Y_L);
    input G_L, A, B;
    output [3:0] Y_L;
    wire G;
    wire [1:0] S;
    reg [3:0] Y;

    assign G = ~G_L;
    assign Y_L = Y;
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
endmodule

module decoder_3to8(
    input G,A,B,
    output [7:0] Y
);

    decoder_2to4 dec1 (.G_L(G), .A(A), .B(B), .Y_L(Y[3:0]));
    decoder_2to4 dec2 (.G_L(~G), .A(A), .B(B), .Y_L(Y[7:4]));
    initial begin
        $dumpfile("decoder_3_8.vcd");
        $dumpvars(0, tb_decoder);
    end
endmodule

// iverilog -o decoder_3_8 tb_decoder.v decoder_3_8.v
// vvp decoder_3_8 -vcd
// open -a gtkwave decoder_3_8.vcd