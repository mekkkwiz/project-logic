 module Decode_7Seg(D, C, B, A, leda, ledb, ledc, ledd, lede, ledf, ledg);
	input D, C, B, A;
  	output leda, ledb, ledc, ledd, lede, ledf, ledg;
  	reg [6:0] seg_data;
  	reg [3:0] DataIn;

	always @(A or B or C or D) begin
 	DataIn = { D, C, B, A };
 	end

    always @ (DataIn)
    case (DataIn)
        4'b0000: seg_data = 7'b1111110;
        4'b0001: seg_data = 7'b0110000;
        4'b0010: seg_data = 7'b1101101;
        4'b0011: seg_data = 7'b1111001;
        4'b0100: seg_data = 7'b0110011;
        4'b0101: seg_data = 7'b1011011;
        4'b0110: seg_data = 7'b1011111;
        4'b0111: seg_data = 7'b1110000;
        4'b1000: seg_data = 7'b1111111;
        4'b1001: seg_data = 7'b1111011;
        4'b1010: seg_data = 7'b1110111;
        4'b1011: seg_data = 7'b0011111;
        4'b1100: seg_data = 7'b1001110;
        4'b1101: seg_data = 7'b0111101;
        4'b1110: seg_data = 7'b1001111;
        4'b1111: seg_data = 7'b1000111;
    endcase

    assign leda = ~seg_data[6];// if Active Low(Using ~)
    assign ledb = ~seg_data[5];
    assign ledc = ~seg_data[4];
    assign ledd = ~seg_data[3];
    assign lede = ~seg_data[2];
    assign ledf = ~seg_data[1];
    assign ledg = ~seg_data[0];

 endmodule
