module T_FF(q, t, clk, reset);
	output q;
	input t,clk, reset;
	wire d;
	xor x1(d, q, t);
	D_FF d1(q, d, clk, reset);
endmodule
	
