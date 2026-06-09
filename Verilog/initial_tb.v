module tb;
    reg [1:0] a, b;

    initial begin // Only in testbenches, not in RTL
        a = 2'b10; // Time = 0
        #10 b = 2'b00; // Time = 10
        #20 a = 2'b01; // Time = 30
        // $finish to end simulation
        // #5 $display to display values at Time = 35
    end
endmodule