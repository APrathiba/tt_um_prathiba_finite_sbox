`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:10 09/21/2018 
// Design Name: 
// Module Name:    AffineTransform 
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
module AffineTransform(in,out
    );
input [3:0]in;
output [3:0]out;

//assign out[0] = in[3]^in[1]^0;
//assign out[1] = in[2]^1;
//assign out[2] = in[1]^1;
//assign out[3] = in[0]^0;
assign out[3] = in[3]^in[1]^0;
assign out[2] = in[2]^1;
assign out[1] = in[1]^1;
assign out[0] = in[0]^0;


endmodule
