// Code your design here
module mux2to1(S, A, B, Out);
input [3:0] A, B;
input S;
output [3:0] Out;
wire [3:0] sel;
wire [3:0] t1, t2;
wire invS;
wire [3:0] extendedS, extendedinvS;
   

  not n0 (invS, S);

  assign extendedS = {4{S}};
  assign extendedinvS = {4{invS}};

  nand (t1[0], extendedinvS[0], A[0]), (t1[1], extendedinvS[1], A[1]), (t1[2], extendedinvS[2], A[2]), (t1[3], extendedinvS[3], A[3]); 
  nand (t2[0], extendedS[0], B[0]), (t2[1], extendedS[1], B[1]), (t2[2], extendedS[2], B[2]), (t2[3], extendedS[3], B[3]);
  nand (Out[0], t1[0], t2[0]), (Out[1], t1[1], t2[1]), (Out[2], t1[2], t2[2]), (Out[3], t1[3], t2[3]);

endmodule