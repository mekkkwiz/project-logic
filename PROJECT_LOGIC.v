module PROJECT_LOGIC(
button1,button_out, clk, reset,
leda, ledb, ledc, ledd, lede, ledf, ledg,
led1, led2, led3, led4, led5, led6, led7
);


    input clk, reset, button1;
    output leda, ledb, ledc, ledd, lede, ledf, ledg; //for 7segment
    output led1, led2, led3, led4, led5, led6, led7;
	output button_out;
    wire and1_out,clk_out,couter_out,notBT;

    wire [2:0]todmux;
    wire C,B,A;
    reg [2:0]led7sg;


    freq_div fd0(clk_out,clk);//slow signal-clock speed


    counter_3bit lightcouter(todmux, clk_out, reset);

	debounce_button db(button1,clk,reset,button_out);

    assign and1_out = ((todmux[0]) && (todmux[1]) && (todmux[2]) && !button_out);

	dmux3to8 demux(todmux, clk, reset, led1, led2, led3, led4, led5, led6, led7);

    counter_3bit scorecouter(led7sg,and1_out,reset); //should use 4-bit counter
	

    assign C = led7sg[2];
    assign B = led7sg[1];
    assign A = led7sg[0];
    

    Decode_7Seg decoder(1'b0,C,B,A,
	leda, ledb, ledc, ledd, lede, ledf, ledg);

endmodule




