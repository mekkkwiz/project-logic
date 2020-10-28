 module counter_3bit(q, clk, reset);
 	input clk, reset;
 	output [2:0]q;
 	wire and_out1;

 	T_FF t0(q[0], 1'b1, clk, reset);
 	T_FF t1(q[1], q[0], clk, reset);

 	and and0(and_out1,q[0],q[1]);

 	T_FF t2(q[2], and_out1, clk, reset);


 endmodule
