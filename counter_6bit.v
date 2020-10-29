 module counter_6bit(q, clk, reset);
 	input clk, reset;
 	output [5:0]q;

 	wire and_out1, and_out2, and_out3, and_out4;

 	T_FF t0(q[0], 1'b1, clk, reset);
 	T_FF t1(q[1], q[0], clk, reset);

 	and and0(and_out1,q[0],q[1]);

 	T_FF t2(q[2], and_out1, clk, reset);

 	assign and_out2 = (q[2] && and_out1);

 	T_FF t3(q[3], and_out2, clk, reset);

	assign and_out3 = (q[3] && and_out2);

 	T_FF t4(q[4], and_out3, clk, reset);

	assign and_out4 = (q[4] && and_out3);

 	T_FF t5(q[5], and_out4, clk, reset);


 endmodule

