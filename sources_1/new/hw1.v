`timescale 1ns / 1ps

module hw1(
        input [3:0] a,
        input [3:0] b,
        output [3:0] an,
        output [6:0] seg, // g,~ a
        output led
    );
    wire [3:0] w_sum;
    wire w_carry;

    assign an = 1'b0; // an is always 0

    full_adder4 fa4(
        .a(a),
        .b(b),
        .c_in(0),
        .carry(w_carry),
        .sum(w_sum)
    );

    hex2seg(
        .din(w_sum),
        .seg_d(seg)
    );

    assign led = w_carry;

endmodule
