module dflipflop
(
   input d, clk, rst,
   output q 
);

    reg q;

    always @(posedge clk)
        if (!rst)
            q <= 0;
        else
            q <= d;

endmodule