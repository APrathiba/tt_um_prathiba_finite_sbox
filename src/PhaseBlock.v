`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:01 09/21/2018 
// Design Name: 
// Module Name:    PhaseBlock 
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
module PhaseBlock(in,out
    );
input [1:0]in;
output [1:0]out;
assign
out[1]=in[1]^in[0],
out[0]=in[1];

endmodule
