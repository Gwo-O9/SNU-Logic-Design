`timescale 1ns / 1ns

module tb_decoder;

    reg G, A, B;
    wire [7:0] Y;

    decoder_3to8 uut(.G(G), .A(A), .B(B), .Y(Y));

    initial begin
        G = 0;
        {A, B} = 2'b00;
        #100;
        {A, B} = 2'b01;
        #100;
        {A, B} = 2'b10;
        #100;
        {A, B} = 2'b11;
        #100;

        G = 1;
        {A, B} = 2'b00;
        #100;
        {A, B} = 2'b01;
        #100;
        {A, B} = 2'b10;
        #100;
        {A, B} = 2'b11;
        #100;
    end

endmodule
