module PROJECT_LOGIC(
button1, clk, reset,
leda, ledb, ledc, ledd, lede, ledf, ledg,
led1, led2, led3, led4, led5, led6, led7
);


    input clk, reset, button1;
    output leda, ledb, ledc, ledd, lede, ledf, ledg; //for 7segment
    output led1, led2, led3, led4, led5, led6, led7;
	wire and1_out,clk_out,clk_out1,couter_out,notBT;
	wire button_out;

    wire [2:0]todmux;

    wire D_1,C_1,B_1,A_1;
    wire D_2,C_2,B_2,A_2;

    reg [5:0]led7sg_1;
	reg [5:0]led7sg_2;


    freq_div fd0(clk_out,clk);//slow signal-clock speed

    freq_div fd1(clk_out1,clk);//slow signal-clock speed


    counter_3bit lightcouter(todmux, clk_out, reset);


	Debouncing db(button_out,!button1,clk_out1);

    assign and1_out = ((todmux[0]) && (todmux[1]) && (todmux[2]) && button_out);


	dmux3to8 demux(todmux, clk, reset, led1, led2, led3, led4, led5, led6, led7);

    counter_6bit scorecouter(led7sg_1,and1_out,reset); //should use 4-bit counter
	


	assign 

	assign D_1 = led7sg_1[3];
    assign C_1 = led7sg_1[2];
    assign B_1 = led7sg_1[1];
    assign A_1 = led7sg_1[0];
    

    Decode_7Seg decoder(D_1,C_1,B_1,A_1,
	leda, ledb, ledc, ledd, lede, ledf, ledg);

endmodule




