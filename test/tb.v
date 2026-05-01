`default_nettype none
`timescale 1ns / 1ps

/* 
   Tiny Tapeout testbench for:
   tt_um_prathiba_finite_sbox

   This testbench instantiates the DUT and generates
   waveform dumps for GTKWave viewing.
*/

module tb ();

  // Dump signals to waveform file
  initial begin
    $dumpfile("tb.fst");
    $dumpvars(0, tb);
    #1;
  end

  // Inputs
  reg clk;
  reg rst_n;
  reg ena;

  reg  [7:0] ui_in;
  reg  [7:0] uio_in;

  // Outputs
  wire [7:0] uo_out;
  wire [7:0] uio_out;
  wire [7:0] uio_oe;

`ifdef GL_TEST
  wire VPWR = 1'b1;
  wire VGND = 1'b0;
`endif

  // Instantiate DUT
  tt_um_prathiba_finite_sbox user_project (

`ifdef GL_TEST
      .VPWR(VPWR),
      .VGND(VGND),
`endif

      .ui_in   (ui_in),     // Dedicated inputs
      .uo_out  (uo_out),    // Dedicated outputs

      .uio_in  (uio_in),    // Bidirectional inputs
      .uio_out (uio_out),   // Bidirectional outputs
      .uio_oe  (uio_oe),    // Output enable

      .ena     (ena),       // Design enable
      .clk     (clk),       // Clock
      .rst_n   (rst_n)      // Active-low reset
  );

  // Clock generation
  always #5 clk = ~clk;

  integer i;

  initial begin

    // Initialize signals
    clk    = 0;
    rst_n  = 0;
    ena    = 1;

    ui_in  = 8'h00;
    uio_in = 8'h00;

    // Release reset
    #20;
    rst_n = 1;

    $display("====================================");
    $display(" Finite Field S-box Test ");
    $display("====================================");

    // Apply all possible 4-bit inputs
    for(i = 0; i < 16; i = i + 1)
    begin

      ui_in[3:0] = i[3:0];

      #10;

      $display("Input = %h --> Output = %h",
                ui_in[3:0],
                uo_out[3:0]);
    end

    $display("====================================");
    $display(" Test Completed ");
    $display("====================================");

   

  end

endmodule

`default_nettype wire
