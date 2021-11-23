module mlp(x0, x1, w00, w01, w10, w11, w20, w21, u00, u10, u20, out);

input [1:0] x0, x1, w00, w01, w10, w11, w20, w21, u00, u10, u20;

output [1:0] out;

wire c0, c1, c2; 

wire [3:0] z0, z1;

wire [3:0] out0;

wire [3:0] y0, y1, y_out;
  
wire [3:0] x0_4bit, x1_4bit, x2_4bit, x2_4bitinv, x0_4bitinv;

 
  assign x0_4bit = {{2{0}},x0};
  assign x1_4bit = {{2{0}},x1};
  assign x2_4bit = {1'b0,x0[1],x0[0],1'b0};
  
  not inv2 (x0_4bitinv[0], x0_4bit[0]), (x0_4bitinv[1], x0_4bit[1]), (x0_4bitinv[2], x0_4bit[2]), (x0_4bitinv[3], x0_4bit[3]);
  
  not inv1 (x2_4bitinv[0], x2_4bit[0]), (x2_4bitinv[1], x2_4bit[1]), (x2_4bitinv[2], x2_4bit[2]), (x2_4bitinv[3], x2_4bit[3]);
  
  neuron n0(x0_4bitinv, x1_4bit, 4'b0001, y0, c0);
  mux2to1 mux0(y0[3], y0, 4'b0000, z0);
  
  neuron n1(x2_4bitinv, x1_4bit, 4'b0001, y1, c1);
  mux2to1 mux1(y1[3], y1, 4'b0000, z1);

  neuron mlp_out(z0, z1, 4'b0000, y_out, c2);
  mux2to1 mux2(y_out[3], y_out, 4'b0000, out0);

  assign out = out0[1:0];

endmodule
