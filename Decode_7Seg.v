 module Decode_7Seg(
     F, E, D, C, B, A,
     leda, ledb, ledc, ledd, lede, ledf, ledg,
     leda_2, ledb_2, ledc_2, ledd_2, lede_2, ledf_2, ledg_2
 );
	input F, E, D, C, B, A;
  	output leda, ledb, ledc, ledd, lede, ledf, ledg;
    output leda_2, ledb_2, ledc_2, ledd_2, lede_2, ledf_2, ledg_2;

  	reg [6:0] seg_data_1;
  	reg [6:0] seg_data_2;
  	reg [5:0] DataIn;

	always @(A or B or C or D or E or F) begin
 	DatIn = { F, E, D, C, B, A };
 	end
    always @ (DaaIn)
    if (DataIn) begin
        case (DataIn)
            6'b000000: seg_data_1 = 7'b1111110; //0
            6'b000001: seg_data_1 = 7'b0110000; //1
            6'b000010: seg_data_1 = 7'b1101101; //2
            6'b000011: seg_data_1 = 7'b1111001; //3
            6'b000100: seg_data_1 = 7'b0110011; //4
            6'b000101: seg_data_1 = 7'b1011011; //5
            6'b000110: seg_data_1 = 7'b1011111; //6
            6'b000111: seg_data_1 = 7'b1110000; //7
            6'b001000: seg_data_1 = 7'b1111111; //8
            6'b001001: seg_data_1 = 7'b1111011; //9

            6'b001010: seg_data_1 = 7'b1111110; //0
            6'b001011: seg_data_1 = 7'b0110000; //1
            6'b001100: seg_data_1 = 7'b1101101; //2
            6'b001101: seg_data_1 = 7'b1111001; //3
            6'b001110: seg_data_1 = 7'b0110011; //4
            6'b001111: seg_data_1 = 7'b1011011; //5
            6'b010000: seg_data_1 = 7'b1011111; //6
            6'b010001: seg_data_1 = 7'b1110000; //7
            6'b010010: seg_data_1 = 7'b1111111; //8
            6'b010011: seg_data_1 = 7'b1111011; //9

            6'b010100: seg_data_1 = 7'b1111110; //0
            6'b010101: seg_data_1 = 7'b0110000; //1
            6'b010110: seg_data_1 = 7'b1101101; //2
            6'b010111: seg_data_1 = 7'b1111001; //3
            6'b011000: seg_data_1 = 7'b0110011; //4
            6'b011001: seg_data_1 = 7'b1011011; //5
            6'b011010: seg_data_1 = 7'b1011111; //6
            6'b011011: seg_data_1 = 7'b1110000; //7
            6'b011100: seg_data_1 = 7'b1111111; //8
            6'b011101: seg_data_1 = 7'b1111011; //9

            6'b011110: seg_data_1 = 7'b1111110; //0
            6'b011111: seg_data_1 = 7'b0110000; //1
            6'b100000: seg_data_1 = 7'b1101101; //2
            6'b100001: seg_data_1 = 7'b1111001; //3
            6'b100010: seg_data_1 = 7'b0110011; //4
            6'b100011: seg_data_1 = 7'b1011011; //5
            6'b100100: seg_data_1 = 7'b1011111; //6
            6'b100101: seg_data_1 = 7'b1110000; //7
            6'b100110: seg_data_1 = 7'b1111111; //8
            6'b100111: seg_data_1 = 7'b1111011; //9

            6'b101000: seg_data_1 = 7'b1111110; //0
            6'b101001: seg_data_1 = 7'b0110000; //1
            6'b101010: seg_data_1 = 7'b1101101; //2
            6'b101011: seg_data_1 = 7'b1111001; //3
            6'b101100: seg_data_1 = 7'b0110011; //4
            6'b101101: seg_data_1 = 7'b1011011; //5
            6'b101110: seg_data_1 = 7'b1011111; //6
            6'b101111: seg_data_1 = 7'b1110000; //7
            6'b110000: seg_data_1 = 7'b1111111; //8
            6'b110001: seg_data_1 = 7'b1111011; //9

            6'b110010: seg_data_1 = 7'b1111110; //0
            6'b110011: seg_data_1 = 7'b0110000; //1
            6'b110100: seg_data_1 = 7'b1101101; //2
            6'b110101: seg_data_1 = 7'b1111001; //3
            6'b110110: seg_data_1 = 7'b0110011; //4
            6'b110111: seg_data_1 = 7'b1011011; //5
            6'b111000: seg_data_1 = 7'b1011111; //6
            6'b111001: seg_data_1 = 7'b1110000; //7
            6'b111010: seg_data_1 = 7'b1111111; //8
            6'b111011: seg_data_1 = 7'b1111011; //9

            6'b111100: seg_data_1 = 7'b1111011; //0
            6'b111101: seg_data_1 = 7'b1111011; //1
            6'b111110: seg_data_1 = 7'b1111011; //2
            6'b111111: seg_data_1 = 7'b1111001; //3
        endcase
        case (DataIn)
            6'b000000: seg_data_2 = 7'b1111110; //0
            6'b000001: seg_data_2 = 7'b1111110; //0
            6'b000010: seg_data_2 = 7'b1111110; //0
            6'b000011: seg_data_2 = 7'b1111110; //0
            6'b000100: seg_data_2 = 7'b1111110; //0
            6'b000101: seg_data_2 = 7'b1111110; //0
            6'b000110: seg_data_2 = 7'b1111110; //0
            6'b000111: seg_data_2 = 7'b1111110; //0
            6'b001000: seg_data_2 = 7'b1111110; //0
            6'b001001: seg_data_2 = 7'b1111110; //0

            6'b001010: seg_data_2 = 7'b0110000; //1
            6'b001011: seg_data_2 = 7'b0110000; //1
            6'b001100: seg_data_2 = 7'b0110000; //1
            6'b001101: seg_data_2 = 7'b0110000; //1
            6'b001110: seg_data_2 = 7'b0110000; //1
            6'b001111: seg_data_2 = 7'b0110000; //1
            6'b010000: seg_data_2 = 7'b0110000; //1
            6'b010001: seg_data_2 = 7'b0110000; //1
            6'b010010: seg_data_2 = 7'b0110000; //1
            6'b010011: seg_data_2 = 7'b0110000; //1

            6'b010100: seg_data_2 = 7'b1101101; //2
            6'b010101: seg_data_2 = 7'b1101101; //2
            6'b010110: seg_data_2 = 7'b1101101; //2
            6'b010111: seg_data_2 = 7'b1101101; //2
            6'b011000: seg_data_2 = 7'b1101101; //2
            6'b011001: seg_data_2 = 7'b1101101; //2
            6'b011010: seg_data_2 = 7'b1101101; //2
            6'b011011: seg_data_2 = 7'b1101101; //2
            6'b011100: seg_data_2 = 7'b1101101; //2
            6'b011101: seg_data_2 = 7'b1101101; //2

            6'b011110: seg_data_2 = 7'b1111001; //3
            6'b011111: seg_data_2 = 7'b1111001; //3
            6'b100000: seg_data_2 = 7'b1111001; //3
            6'b100001: seg_data_2 = 7'b1111001; //3
            6'b100010: seg_data_2 = 7'b1111001; //3
            6'b100011: seg_data_2 = 7'b1111001; //3
            6'b100100: seg_data_2 = 7'b1111001; //3
            6'b100101: seg_data_2 = 7'b1111001; //3
            6'b100110: seg_data_2 = 7'b1111001; //3
            6'b100111: seg_data_2 = 7'b1111001; //3

            6'b101000: seg_data_2 = 7'b0110011; //4
            6'b101001: seg_data_2 = 7'b0110011; //4
            6'b101010: seg_data_2 = 7'b0110011; //4
            6'b101011: seg_data_2 = 7'b0110011; //4
            6'b101100: seg_data_2 = 7'b0110011; //4
            6'b101101: seg_data_2 = 7'b0110011; //4
            6'b101110: seg_data_2 = 7'b0110011; //4
            6'b101111: seg_data_2 = 7'b0110011; //4
            6'b110000: seg_data_2 = 7'b0110011; //4
            6'b110001: seg_data_2 = 7'b0110011; //4

            6'b110010: seg_data_2 = 7'b1011011; //5
            6'b110011: seg_data_2 = 7'b1011011; //5
            6'b110100: seg_data_2 = 7'b1011011; //5
            6'b110101: seg_data_2 = 7'b1011011; //5
            6'b110110: seg_data_2 = 7'b1011011; //5
            6'b110111: seg_data_2 = 7'b1011011; //5
            6'b111000: seg_data_2 = 7'b1011011; //5
            6'b111001: seg_data_2 = 7'b1011011; //5
            6'b111010: seg_data_2 = 7'b1011011; //5
            6'b111011: seg_data_2 = 7'b1011011; //5

            6'b111100: seg_data_2 = 7'b1011111; //6
            6'b111101: seg_data_2 = 7'b1011111; //6
            6'b111110: seg_data_2 = 7'b1011111; //6
            6'b111111: seg_data_2 = 7'b1011111; //6
        endcase
    end

     assign leda = ~seg_data_1[6];// if Active Low(Using ~)
     assign ledb = ~seg_data_1[5];
     assign ledc = ~seg_data_1[4];
     assign ledd = ~seg_data_1[3];
     assign lede = ~seg_data_1[2];
     assign ledf = ~seg_data_1[1];
     assign ledg = ~seg_data_1[0];

     assign leda_2 = ~seg_data_2[6];// if Active Low(Usin
     assign ledb_2 = ~seg_data_2[5];
     assign ledc_2 = ~seg_data_2[4];
     assign ledd_2 = ~seg_data_2[3];
     assign lede_2 = ~seg_data_2[2];
     assign ledf_2 = ~seg_data_2[1];
     assign ledg_2 = ~seg_data_2[0];

 endmodule
