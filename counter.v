module counter(q, clk, reset);
	input clk, reset;
	output [1:0]q;
	wire q0,clk_out;

	//freq_div fd0(clk,clk);
	T_FF t0(q[0], 1'b1, clk, reset);
	T_FF t1(q[1], q[0], clk, reset);

endmodule
