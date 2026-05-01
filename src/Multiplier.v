module Multiplier(in,wi,out
    );
input [1:0]in;
input [1:0]wi;
output [1:0]out;
assign
out[1]=(in[1]&wi[1])^(in[0]&wi[1])^(in[1]&wi[0]),
out[0]=(in[1]&wi[1])^(in[0]&wi[0]);
endmodule
