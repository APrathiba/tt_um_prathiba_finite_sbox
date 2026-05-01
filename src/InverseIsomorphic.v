`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:15:26 09/21/2018 
// Design Name: 
// Module Name:    InverseIsomorphic 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
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
