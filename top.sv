`include "cla_1bit.v"
`include "cla_block.v"
`include "cla_4bit.v"
`include "mux2to1.v"
`include "neuron.v"
`include "mlp.v"

module top(x0, x1, w00, w01, w10, w11, w20, w21, u00, u10, u20, out);

// This is a behavioral model. This is only for functional verification. You do not need to follow exact semantics

input [1:0] x0, x1, w00, w01, w10, w11, w20, w21, u00, u10, u20;

output [1:0] out;

// Instantiation of an MLP module
  mlp mlp(x0, x1, w00, w01, w10, w11, w20, w21, u00, u10, u20, out);

endmodule