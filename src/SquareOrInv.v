`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:53 09/21/2018 
// Design Name: 
// Module Name:    SquareOrInv 
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
module SquareOrInv(in,out
    );

input [1:0]in;
output [1:0]out;
assign
out[1]=in[1],
out[0]=in[0]^in[1];
endmodule