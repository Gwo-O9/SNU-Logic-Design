`timescale 1ns/ 1ns

module bcd_struct(
    input A,B,C,D,
    output [6:0] Y
);

wire BD, NB_ND, NC_ND, CD;
wire B_ND, B_NC;
wire C_ND, B_NC_D, NB_C;

and U0(BD, B, D);
and U1(NB_ND, ~B, ~D);
and U2(N_CD, C, D);
and U3(CD, C, D);
and U4(C_ND, C, ~D);
and U5(B_NC_D, B, ~C, D);
and U6(NB_C, ~B, C);
and U7(NC_ND, ~C, ~D);
and U8(B_ND, B, ~D);
and U9(B_NC, B, ~C);

or Y0(Y[0], BD, NB_ND, A, C);
or Y1(Y[1], NC_ND, CD, ~B);
or Y2(Y[2], B, ~C, D);
or Y3(Y[3], NB_ND, C_ND, B_ND_D, NB_C);
or Y4(Y[4], NB_ND, C_ND,);
or Y5(Y[5], A, NC_ND, B_ND, B_NC);
or Y6(Y[6], A, C_ND, B_NC, NB_C);

endmodule