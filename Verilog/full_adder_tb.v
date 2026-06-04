`timescale 1ns / 1ps

module full_adder_tb;

    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;
    integer i;

    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("Time\t a b cin | sum cout");
        $display("---------------------------");

        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i;
            #10;
            $display("%0t\t %b %b  %b  |  %b    %b", $time, a, b, cin, sum, cout);
        end

        $finish;
    end

endmodule