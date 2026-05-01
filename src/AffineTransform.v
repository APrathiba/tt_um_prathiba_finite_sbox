module AffineTransform(in,out
    );
input [3:0]in;
output [3:0]out;

//LW s-box
assign out[0] = ( in[3] ^ in[0])^1;
assign out[1] = ( in[2] )^1;
assign out[2] =  (in[1])^1;
assign out[3] =   (in[0])^0;


/*


// low TO
assign out[3] = in[3]^ in[2]^in[1]^0;
assign out[2] = in[1]^0;
assign out[1] = in[2]^in[1]^1;
assign out[0] = in[2]^in[0]^1;
*/

endmodule
