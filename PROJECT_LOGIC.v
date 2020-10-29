module PROJECT_LOGIC(
    button1, button2, button3, clk, reset, //input
    leda, ledb, ledc, ledd, lede, ledf, ledg,	//output to 7SEGMENT
    leda_2, ledb_2, ledc_2, ledd_2, lede_2, ledf_2, ledg_2
);

    input clk, reset, button1, button2, button3;

    output leda, ledb, ledc, ledd, lede, ledf, ledg; //for 7segment 1st digit
    output leda_2, ledb_2, ledc_2, ledd_2, lede_2, ledf_2, ledg_2; //for 7segment 2nd digjt


	wire and1_out,clk_out,clk_out1,couter_out;
	wire button_out, button_out2, button_out3;

    wire D_1,C_1,B_1,A_1;
    wire D_2,C_2,B_2,A_2;

    reg [5:0]led7sg_1;
	reg [5:0]led7sg_2;

    lightManaher LM();

    freq_div fd0(clk_out,clk);//slow signal-clock speed
    freq_div fd1(clk_out1,clk);//slow signal-clock speed


	Debouncing db(button_out1,!button1,clk_out1);
	Debouncing db2(button_out2,!button2,clk_out1);
	Debouncing db3(button_out3,!button3,clk_out1);

    assign and1_out = ((todmux1[0]) && (todmux1[1]) && (todmux1[2]) && button_out);
    assign and1_out = ((todmux1[0]) && (todmux1[1]) && (todmux1[2]) && button_out);
    assign and1_out = ((todmux1[0]) && (todmux1[1]) && (todmux1[2]) && button_out);

    counter_6bit scorecouter(led7sg_1,and1_out,reset); //should use 6-bit counter for score count

    assign F_1 = led7sg_1[5];   //
    assign E_1 = led7sg_1[4];
    assign D_1 = led7sg_1[3];
    assign C_1 = led7sg_1[2];
    assign B_1 = led7sg_1[1];
    assign A_1 = led7sg_1[0];


    Decode_7Seg decoder1(F_1, E_1, D_1, C_1, B_1, A_1,
	leda, ledb, ledc, ledd, lede, ledf, ledg,
    leda_2, ledb_2, ledc_2, ledd_2, lede_2, ledf_2, ledg_2);

endmodule : PROJECT_LOGIC

