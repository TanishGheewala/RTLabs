// 4-bit 4x1 Multiplexer (MUX)
// Using Assign & Combinational Logic

module 4x1mux
  (
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [1:0] sel, // Selector
    output [3:0] out
  );

  assign out = sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a);
  // Or:
  assign out = (sel == 2'b00) ? a :
         (sel == 2'b01) ? b :
         (sel == 2'b10) ? c : d;
  // Or:
  always @(a or b or c or d or sel)
  begin
    case (sel)
      2'b00:
        out = a;
      2'b01:
        out = b;
      2'b10:
        out = c;
      2'b11:
        out = d;
    endcase
  end

endmodule
