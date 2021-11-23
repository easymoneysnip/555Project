module cla_block (g, p, Cin, Cint, Cout);
input [3:0] g, p;
input Cin;
output [2:0] Cint;
output Cout;

wire P, G;
wire temp1, temp2, temp3;
wire temp4, temp5, temp6;
wire temp7, temp8, temp9;
and a1 (temp1, p[0], Cin);
and a2 (temp2, p[1], Cint[0]);
and a3 (temp3, p[2], Cint[1]);
or o1 (Cint[0], g[0], temp1);
or o2 (Cint[1], g[1], temp2);
or o3 (Cint[2], g[2], temp3);
and a4 (P, p[0], p[1], p[2], p[3]); 
and a5 (temp4, p[1], g[0]);
or o4 (temp5, g[1], temp4);
and a6 (temp6, p[2], temp5);
or o5 (temp7, g[2], temp6);
and a7 (temp8, p[3], temp7);
or o6 (G, g[3], temp8);

and a8 (temp9, P, Cin);
or o7 (Cout, G, temp9);

endmodule