`timescale 1ns / 1ps

module tb_full_adder4;

    reg [3:0] a;
    reg [3:0] b;
    reg c_in;
    wire [3:0] sum;
    wire carry;
    wire [4:0] ov_sum;

    assign ov_sum = {carry,sum};

    // design under test
    full_adder4 dut(
        .a(a),
        .b(b),
        .c_in(c_in),
        .carry(carry),
        .sum(sum)
    );

    initial begin
        #00 c_in = 1'b0; a = 3; b = 4;
        #10 a = 5; b = 9;
        #10 a = 9; b = 9;
        #10 a = 7; b = 8;
        #10 $finish;
    end
endmodule
