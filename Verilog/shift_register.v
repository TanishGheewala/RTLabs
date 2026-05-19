//4-bit Shift Register using dflipflop.v

module shift_register 
(
    input d,
    input rstn,
    input clk,
    output q
);

// Internal Wires
wire [2:0] q_net;

// Module Instantiation
dflipflop u0 (.d(d), .clk(clk), .rstn(rstn), .q(q_net[0]));
dflipflop u1 (.d(q_net[0]), .clk(clk), .rstn(rstn), .q(q_net[1]));
dflipflop u2 (.d(q_net[1]), .clk(clk), .rstn(rstn), .q(q_net[2]));
dflipflop u3 (.d(q_net[2]), .clk(clk), .rstn(rstn), .q(q));

endmodule