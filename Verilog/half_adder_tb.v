`timescale 1ns/1ps
`include "half_adder.v"

module half_adder_tb;

reg a;
reg b;
wire sum;
wire carry;

half_adder uut 
(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin
    $display("Half Adder Truth Table");
    $display("----------------------");
    $display(" a | b | sum | carry ");
    $display("----------------------");

    a = 0; b = 0; #10;
    $display(" %b | %b |  %b  |   %b", a, b, sum, carry);

    a = 0; b = 1; #10;
    $display(" %b | %b |  %b  |   %b", a, b, sum, carry);

    a = 1; b = 0; #10;
    $display(" %b | %b |  %b  |   %b", a, b, sum, carry);

    a = 1; b = 1; #10;
    $display(" %b | %b |  %b  |   %b", a, b, sum, carry);

    $display("----------------------");
    $finish;
end

endmodule