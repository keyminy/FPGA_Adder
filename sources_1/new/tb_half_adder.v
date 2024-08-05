
module tb_half_adder();
    reg a;
    reg b;
    wire o_sum;
    wire o_carry;

    adder dut_adder(
    .a(a),
    .b(b),
    .o_sum(o_sum),
    .o_carry(o_carry)
    );

    initial begin
      #00 a=0; b=0;
      #10 a=0; b=1;
      #10 a=1; b=0;
      #10 a=1; b=1;
      #10 $finish;
    end
endmodule
