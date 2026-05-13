module dflipflop_tb;
    reg tb_d;
    reg tb_clk;
    reg tb_rst;
    reg tb_q;

    // Instantiation
    dflipflop dflipflop1 
    (
        .d(tb_d),
        .clk(tb_clk),
        .rst(tb_rst),
        .q(tb_q)
    );
    
    // Clock
    // always #5 tb_clk = ~tb_clk;

    // Driver
    initial begin
        // $dumpfile("dflipflop_tb.vcd");
        // $dumpvars(0, dflipflop_tb);
        tb_rst <= 1'b0;
        tb_clk <= 1'b0;
        tb_d <= 1'b0;
    end

endmodule