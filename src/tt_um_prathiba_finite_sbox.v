`timescale 1ns / 1ps

module tt_um_prathiba_finite_sbox (

    input  wire [7:0] ui_in,      // Dedicated inputs
    output wire [7:0] uo_out,     // Dedicated outputs

    input  wire [7:0] uio_in,     // Bidirectional inputs
    output wire [7:0] uio_out,    // Bidirectional outputs
    output wire [7:0] uio_oe,     // Output enable

    input  wire clk,              // Unused
    input  wire rst_n             // Unused
);

    // Prevent unused signal warnings
    wire _unused = &{clk, rst_n, uio_in};

    // Internal wire for S-box output
    wire [3:0] sbox_out;

    // Instantiate your finite-field S-box
    SBoxIntegration uut (
        .SboxIn(ui_in[3:0]),
        .SboxOut(sbox_out)
    );

    // Connect S-box output to Tiny Tapeout outputs
    assign uo_out[3:0] = sbox_out;

    // Remaining outputs unused
    assign uo_out[7:4] = 4'b0000;

    // Bidirectional IO unused
    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000;

endmodule
