`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:10 09/21/2018 
// Design Name: 
// Module Name:    isomorphic 
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
