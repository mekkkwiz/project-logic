module debounce_button(pb_1,
                clk,
                reset,
                pb_out);
input pb_1,clk,reset;
output pb_out;
wire slow_clk;
wire Q1,Q2,Q2_bar,Q0;
freq_div u1(slow_clk,clk);
D_FF d0(Q0, pb_1, slow_clk, reset);

D_FF d1(Q1, Q0, slow_clk, reset );
D_FF d2(Q2, Q1, slow_clk, reset );
assign Q2_bar = ~Q2;
assign pb_out = Q1 & Q2_bar;
endmodule

