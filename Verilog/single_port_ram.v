module single_port_ram
#( // # = Parametric
    parameter ADDR_WIDTH = 16, // Address Bus
    parameter DATA_WIDTH = 32 // Data Bus
)
(
    input wire clk,
    input wire we, // Write Enable
    input wire [ADDR_WIDTH-1:0] addr,
    input wire [DATA_WIDTH-1:0] din,
    output wire [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] mem [2**ADDR_WIDTH-1:0];

// Synchronous Write
always @(posedge clk) begin
    if (we == 1'b1)
        mem[addr] <= din;
end

// Asynchronous Read
assign dout = mem[addr];

endmodule