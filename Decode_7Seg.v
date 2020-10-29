 module Decode_7Seg(
     F, E, D, C, B, A,
     leda, ledb, ledc, ledd, lede, ledf, ledg,
 );
	input F, E, D, C, B, A;
  	output leda, ledb, ledc, ledd, lede, ledf, ledg;

  	reg [6:0] seg_data_1;
  	reg [6:0] seg_data_2;
  	reg [5:0] DataIn;

	always @(A or B or C or D or E or F) begin
 	DataIn = { F, E, D, C, B, A };
 	end
    always @ (DataIn)
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

        endcase
    end else begin
        seg_data_1 = 7'b1111111;
    end


     assign leda = ~seg_data_1[6];// if Active Low(Using ~)
     assign ledb = ~seg_data_1[5];
     assign ledc = ~seg_data_1[4];
     assign ledd = ~seg_data_1[3];
     assign lede = ~seg_data_1[2];
     assign ledf = ~seg_data_1[1];
     assign ledg = ~seg_data_1[0];

 endmodule
