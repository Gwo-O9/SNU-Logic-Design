`timescale 1ns/ 1ns

module tb_struct_MUX;
    struct_MUX dut(.data_in(data_in), .sel(sel), .data_out(data_out));
    
    reg [3:0] data_in;
    reg [1:0] sel;
    
    wire data_out;
    
    initial begin
        $dumpfile("tb_struct_MUX.vcd");
        $dumpvars(0, tb_struct_MUX);
        
        data_in = 4'b0001;
        sel = 2'b00;
        #100;
        
        data_in = 4'b0010;
        sel = 2'b01;
        #100;
        
        data_in = 4'b0100;
        sel = 2'b10;
        #100;
        
        data_in = 4'b1000;
        sel = 2'b11;
        #100;
    end
    
endmodule
