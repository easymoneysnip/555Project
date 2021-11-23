module cla_4bit (A, B, Cin, S, Cout);
input [3:0] A, B;
input Cin;
output [3:0] S;
output Cout;

wire [3:0] g, p;
wire [2:0] Cint;

cla_1bit a0 (.A(A[0]), .B(B[0]), .Cin(Cin), .g(g[0]), .p(p[0]), .Sum(S[0]));
cla_1bit a1 (.A(A[1]), .B(B[1]), .Cin(Cint[0]), .g(g[1]), .p(p[1]), .Sum(S[1]));
cla_1bit a2 (.A(A[2]), .B(B[2]), .Cin(Cint[1]), .g(g[2]), .p(p[2]), .Sum(S[2]));
cla_1bit a3 (.A(A[3]), .B(B[3]), .Cin(Cint[2]), .g(g[3]), .p(p[3]), .Sum(S[3]));

cla_block c0 (.g(g), .p(p), .Cin(Cin), .Cint(Cint), .Cout(Cout));

endmodule