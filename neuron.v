module neuron(In0, In1, Cin, Out, Cout_fin);
input [3:0] In0, In1, Cin;
output [3:0] Out;

wire [3:0] Sum1;
wire Cout;
output Cout_fin;

  cla_4bit cla0(.A(In0), .B(In1), .Cin(Cin), .S(Sum1), .Cout(Cout));
  cla_4bit cla1(.A(Sum1), .B(4'b1111), .Cin(4'b0000), .S(Out), .Cout(Cout_fin));

endmodule