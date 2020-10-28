module freq_div2(clk_out,clk);
	input clk;
	output clk_out;
	wire [19:0]q;


	T_FF t_ff01( q[0], 1'b1, clk, 1'b0);
	T_FF t_ff02( q[1], 1'b1, q[0], 1'b0);
	T_FF t_ff03( q[2], 1'b1, q[1], 1'b0);
	T_FF t_ff04( q[3], 1'b1, q[2], 1'b0);
	T_FF t_ff05( q[4], 1'b1, q[3], 1'b0);
	T_FF t_ff06( q[5], 1'b1, q[4], 1'b0);
	T_FF t_ff07( q[6], 1'b1, q[5], 1'b0);
	T_FF t_ff08( q[7], 1'b1, q[6], 1'b0);
	T_FF t_ff09( q[8], 1'b1, q[7], 1'b0);
	T_FF t_ff010( q[9], 1'b1, q[8], 1'b0);
	T_FF t_ff011( q[10], 1'b1, q[9], 1'b0);
	T_FF t_ff012( q[11], 1'b1, q[10], 1'b0);
	T_FF t_ff013( q[12], 1'b1, q[11], 1'b0);
	T_FF t_ff014( q[13], 1'b1, q[12], 1'b0);
	T_FF t_ff015( q[14], 1'b1, q[13], 1'b0);
	T_FF t_ff016( q[15], 1'b1, q[14], 1'b0);
	T_FF t_ff017( q[16], 1'b1, q[15], 1'b0);
	T_FF t_ff018( q[17], 1'b1, q[16], 1'b0);
	T_FF t_ff019( q[18], 1'b1, q[17], 1'b0);
	T_FF t_ff020( q[19], 1'b1, q[18], 1'b0);
	T_FF t_ff021( clk_out, 1'b1, q[19], 1'b0);

endmodule






