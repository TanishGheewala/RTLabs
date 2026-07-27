`timescale 1ns/1ps

module tb_latch;

  reg d;
  reg en;
  reg reset;
  wire q;

  latch uut (
          .d(d),
          .en(en),
          .reset(reset),
          .q(q)
        );

  initial
  begin
    $dumpfile("latch_tb.vcd");
    $dumpvars(0, tb_latch);

    reset = 0;
    en = 0;
    d = 0;
    #10;
    reset = 1;
    #10;
    d = 1;
    #10;
    #10;
    d = 0;
    #10;
    d = 1;
    #10;
    en = 0;
    #10;
    d = 0;
    #10;
    reset = 0;
    #10;
    reset = 1;
    en = 1;
    d = 1;
    #10;

    $finish;
  end

endmodule
