`timescale 1ns / 1ps

module tt_um_prathiba_finite_sbox (

    input  wire [7:0] ui_in,      // Dedicated inputs
    output wire [7:0] uo_out,     // Dedicated outputs

    input  wire [7:0] uio_in,     // Bidirectional inputs
    output wire [7:0] uio_out,    // Bidirectional outputs
    output wire [7:0] uio_oe,     // Output enable

    input  wire ena,              // Design enable
    input  wire clk,              // Clock
    input  wire rst_n             // Reset
);

    // Prevent unused signal warnings
    wire _unused = &{ena, clk, rst_n, uio_in};

    // Internal wire for S-box output
    wire [3:0] sbox_out;

    // Instantiate finite-field S-box
    SBoxIntegration uut (
        .SboxIn(ui_in[3:0]),
        .SboxOut(sbox_out)
    );

    // Connect outputs
    assign uo_out[3:0] = sbox_out;

    // Unused outputs
    assign uo_out[7:4] = 4'b0000;

    // Bidirectional IO unused
    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000;

endmodule
