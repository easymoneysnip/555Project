module cla_1bit (A, B, Cin, g, p, Sum);
input A, B, Cin;
output Sum, p, g;

and a0 (g, A, B);
xor a1 (p, A, B);
xor a2 (Sum, A, B, Cin);

endmodule