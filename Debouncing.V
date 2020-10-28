
module Debouncing(s_out, s_in, clk);
	output s_out;
	input s_in, clk;
	wire Q1,Q2,Q2_bar;
	D_FF d1(Q1, s_in, clk, 1'b0);
	D_FF d2(Q2, Q1, clk, 1'b0);

	assign Q2_bar = ~Q2;
	assign s_out = Q1 & Q2_bar;
endmodule
