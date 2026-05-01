module InverseIsomorphic(isoin,isoout
    );
input [3:0]isoin;
output [3:0]isoout;

assign
isoout[3]=isoin[3],
isoout[2]=isoin[3]^isoin[1],
isoout[1]=isoin[2]^isoin[1],
isoout[0]=isoin[0];
endmodule
