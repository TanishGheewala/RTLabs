module full_adder 
(
    input a,
    input b,
    output cin,
    output sum,
    output cout
);

wire sum1;
wire carry1;
wire carry2;

half_adder HA1
(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum1),
    .carry(carry1)
);

half_adder HA2
(
    .a(sum1),
    .b(cin),
    .sum(sum),
    .carry(carry2)
);

assign cout = carry1 | carry2;

endmodule