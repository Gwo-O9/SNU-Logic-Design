module klingon_struct(
    input [3:0] I,
    output wire A,B,C,D,E,F,G
);

    wire t1, t2, t3, t4, t5, t6, t7, t8, t9, t10;  
    
    and a(A, ~I[3], ~I[2]);
    and U5(t5, ~I[1], ~I[0]);
    and U6(t6, I[2], ~I[0]);
    or b(B, I[3], t5, t6);
    and U1(t1, I[2], I[0]);
    and U2(t2, ~I[2], ~I[1], ~I[0]);
    or c(C, I[3], t1, t2);
    and U7(t7, ~I[0], ~I[1], ~I[2], ~I[3]);
    and U3(t3, I[2], ~I[1], I[0]);
    and U8(t8, ~I[2], I[1], I[0]);
    or d(D, t7, t3, t8);
    and U4(t4, I[2], I[1], ~I[0]);
    or e(E, I[3], t2, t3, t4);
    and U9(t9, I[2], I[1], I[0]);
    or f(F, I[3], t5, t9);
    and U10(t10, I[0], I[3]);
    or g(G, I[1], I[2], t10);
endmodule
