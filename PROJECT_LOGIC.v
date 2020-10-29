module PROJECT_LOGIC(
button1, clk, reset, //input
diff1,diff2,diff3,diff4,diff5,diff6,diff7,	//input diffswitch
o_diff1,o_diff2,o_diff3,o_diff4,o_diff5,o_diff6,o_diff7,	//output_diff
leda, ledb, ledc, ledd, lede, ledf, ledg,	//output to 7SEGMENT
led1, led2, led3, led4, led5, led6, led7	//output to sliding LED
);

    input clk, reset, button1;
	input diff1,diff2,diff3,diff4,diff5,diff6,diff7;
	output o_diff1,o_diff2,o_diff3,o_diff4,o_diff5,o_diff6,o_diff7;
    output leda, ledb, ledc, ledd, lede, ledf, ledg; //for 7segment
    output led1, led2, led3, led4, led5, led6, led7;
	wire and1_out,clk_out,clk_out1,couter_out,notBT;
	wire button_out;

    reg [2:0]todmux1;

    wire D_1,C_1,B_1,A_1;
    wire D_2,C_2,B_2,A_2;

    reg [5:0]led7sg_1;
	reg [5:0]led7sg_2;

    reg line1_trigger;
    reg [5:0] line1_sel;

    freq_div fd0(clk_out,clk);//slow signal-clock speed
    freq_div fd1(clk_out1,clk);//slow signal-clock speed

	assign o_diff1 = diff1;
	assign o_diff2 = diff2;
	assign o_diff3 = diff3;
	assign o_diff4 = diff4;
	assign o_diff5 = diff5;
	assign o_diff6 = diff6;
	assign o_diff7 = diff7;

    counter_6bit line1_selGenerator(line1_sel,clk_out,reset);

   	LightManager lightManager(line1_trigger, line1_sel);

    counter_3bit lightline1(todmux1,clk_out, reset);

	Debouncing db(button_out,!button1,clk_out1);

    assign and1_out = ((!todmux1[0]) && (!todmux1[1]) && (!todmux1[2]) && button_out);


	dmux3to8 demux1(todmux1, clk, reset, led1, led2, led3, led4, led5, led6, led7);

    counter_6bit scorecouter(led7sg_1,and1_out,reset); //should use 4-bit counter
	

	assign D_1 = led7sg_1[3];
    assign C_1 = led7sg_1[2];
    assign B_1 = led7sg_1[1];
    assign A_1 = led7sg_1[0];
    

    Decode_7Seg decoder1(D_1,C_1,B_1,A_1,
	leda, ledb, ledc, ledd, lede, ledf, ledg);

endmodule

