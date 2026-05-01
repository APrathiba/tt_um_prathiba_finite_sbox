module SquareOrInv(in,out
    );

input [1:0]in;
output [1:0]out;
assign
out[1]=in[1],
out[0]=in[0]^in[1];
endmodule
