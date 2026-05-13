module counter 
(
    input ctr, clk, rst,
    output reg [16:0] out // 16 bit width = maximum count of 65535 (2^16 - 1)
);

    always @(posedge clk) // Rising Edge
        if (!rst) // Active Low Reset
            out <= 0; // Non-Blocking Assignment
        else begin
            if (ctr)
                out <= out + 1;
            else
                out <= out - 1;
        end

endmodule