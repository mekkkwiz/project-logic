module counter(q, clk, reset);
	input clk, reset;
	output [1:0]q;
	wire q0;
	T_FF t0(q[0], 1'b1, clk, reset);
	T_FF t1(q[1], q[0], clk, reset);
endmodule

module D_FF(q, d, clk, reset);
	output q;
	input d, clk, reset;
	reg q;
	always @ (posedge reset or negedge clk)
	if(reset)
		q <= 1'b0;
	else
		q <= d;
endmodule

module T_FF(q, d, clk, reset);
	output q;
	input t,clk, reset;
	wire d;
	xor xor1(d, q, t);
	D_FF d1(q, d, clk, reset)
endmodule
	
