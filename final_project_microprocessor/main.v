module main(
	//input [7:0] inst,
	input clk,
	input reset,
	input [7:0]inst,
	output reg [7:0]pc,
	output [6:0] ten_out,
	output [6:0] one_out,
	output [6:0] ten_pc,
	output [6:0] one_pc,
	output [6:0] ten_team,
	output [6:0] one_team
    );
	 
	 wire[1:0] op; wire[1:0] rs; wire[1:0] rt; wire[1:0] rd;

	 wire CLK; wire[7:0] temp_pc;wire[7:0] branchpc;wire[7:0] nextpc;
	 
	 wire[7:0] writeData;
	 wire	[7:0] control; 
	 wire RegDst, RegWrite, ALUSrc, Branch, MemRead, MemWrite, MemtoReg, ALUOp;
	 wire	[7:0]	readData1;
	 wire	[7:0]	temp_readData2; 
	 wire [7:0] readData2;
	 wire [1:0] writeRegister; 
	 wire [7:0] signExtend; 
	 wire [7:0] ALU_out; 
	 wire [7:0] Mem_out;
	 
	 /* assign controls to each control signal */
	 assign RegDst = control[7]; 
	 assign RegWrite = control[6]; 
	 assign ALUSrc = control[5]; 
	 assign Branch = control[4];
	 assign MemRead = control[3];
	 assign MemWrite = control[2]; 
	 assign MemtoReg = control[1]; 
	 assign ALUOp = control[0];

	 freq_divider F(.reset(reset), .clk(clk), .clkout(CLK));
	 assign op = inst[7:6]; assign rs = inst[5:4]; assign rt = inst[3:2]; assign rd = inst[1:0];
	 
	 wire [7:0]inner_out; reg [7:0] out;
	 Control C(.op(op),.control(control));
	 sign_extension S(.in(rd), .out(signExtend));
	 
	 Mux#(2) M1(.in0(rt), .in1(rd), .s(RegDst), .out(writeRegister));
	 Mux#(8) M2(.in0(temp_readData2), .in1(signExtend), .s(ALUSrc), .out(readData2));
	 Mux#(8) M3(.in0(ALU_out), .in1(Mem_out), .s(MemtoReg), .out(writeData));
	 Mux#(8) M4(.in0(temp_pc), .in1(branchpc), .s(Branch), .out(nextpc));

	 ALU ALU(.rs1(readData1), .rs2(readData2), .ALUOp(ALUOp), .out(ALU_out));
	 
	 DMEM DMEM(.addr(ALU_out), .writeData(temp_readData2), .MemRead(MemRead), 
	 			.MemWrite(MemWrite), .clk(CLK), .reset(reset), .out(Mem_out));
	 
	 Registers R(.rs(rs), .rt(rt), .rd(writeRegister), .writeData(writeData), 
	 		.RegWrite(RegWrite), .clk(CLK), .reset(reset), .readData1(readData1), 
			.readData2(temp_readData2), .out(inner_out));
	
	hex_to_7_decoder TEN(.in(out[7:4]), .out(ten_out[6:0]));
	hex_to_7_decoder ONE(.in(out[3:0]), .out(one_out[6:0]));
	hex_to_7_decoder PCTEN(.in(pc[7:4]), .out(ten_pc[6:0]));
	hex_to_7_decoder PCONE(.in(pc[3:0]), .out(one_pc[6:0]));
	
	assign ten_team = 7'b0110000;	assign one_team = 7'b1011111;
	
	 /* Update next pc address*/
	 assign temp_pc = pc + 1;
	 assign branchpc = temp_pc + signExtend;
	 
	
	 
	 always@(posedge CLK or posedge reset) begin
		if (reset)
			pc <= 0;
		else begin
			pc <= nextpc;
			out <= inner_out;
		end
	end
	 
endmodule