// D-Latch

module latch (
    input wire d,
    input wire en,
    input wire reset,
    output reg q
  );

  always @(*)
    if (!reset)
      q = 1'b0;
    else if (en)
      q = d;

endmodule
