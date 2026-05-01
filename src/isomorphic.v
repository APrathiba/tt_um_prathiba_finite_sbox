module isomorphic(iso_in,iso_out
    );
input [3:0]iso_in;
output [3:0]iso_out;

assign
iso_out[3]=iso_in[3],
iso_out[2]=iso_in[3]^iso_in[2]^iso_in[1],
iso_out[1]=iso_in[3]^iso_in[2],
iso_out[0]=iso_in[0];

endmodule
