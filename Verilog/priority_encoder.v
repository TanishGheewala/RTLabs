// Priority Encoder
// 4-bit, parameterized, outputs the highest-priority active input using if-else chains.

module priority_encoder #(
    parameter WIDTH = 4,
    parameter OUTPUT_WIDTH = 2 // clog2(WIDTH)
  )
  (
    input [WIDTH-1:0] in,
    output reg [OUTPUT_WIDTH-1:0] out,
    output reg valid
  );
  always @(*)
  begin
    valid = 1'b1; // Assumes valid
    if (in[3])
      out = 2'd3; // Highest priority
    else if (in[2])
      out = 2'd2;
    else if (in[1])
      out = 2'd1;
    else if (in[0])
      out = 2'd0;
    else
    begin
      out   = 2'd0;
      valid = 1'b0;
    end
  end
endmodule
