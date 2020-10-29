module sevenSegment(A1, B1, C1, D1, E1, F1, G1,
					A2, B2, C2, D2, E2, F2, G2, clk, Reset);
	input clk, Reset;
	output A1, B1, C1, D1, E1, F1, G1;
	output A2, B2, C2, D2, E2, F2, G2;
	wire [6:0]bits;
	
	BCDCountUp bcd(bits, clk, Reset);
	
	reg [13:0] SevenSeg;
	always @(1'b1)
	case(bits)
		7'd0: SevenSeg = 14'b00000001111110;	//00
		7'd1: SevenSeg = 14'b00000000110000;	//01
		7'd2: SevenSeg = 14'b00000001101101;	//02
		7'd3: SevenSeg = 14'b00000001111001;	//03
		7'd4: SevenSeg = 14'b00000000110011;	//04
		7'd5: SevenSeg = 14'b00000001011011;	//05
		7'd6: SevenSeg = 14'b00000001011111;	//06
		7'd7: SevenSeg = 14'b00000001110000;	//07
		7'd8: SevenSeg = 14'b00000001111111;	//08
		7'd9: SevenSeg = 14'b00000001111011;	//09
		
	   7'd10: SevenSeg = 14'b01100001111110;	//10
	   7'd11: SevenSeg = 14'b01100000110000;	//11
	   7'd12: SevenSeg = 14'b01100001101101;	//12
	   7'd13: SevenSeg = 14'b01100001111001;	//13
	   7'd14: SevenSeg = 14'b01100000110011;	//14
	   7'd15: SevenSeg = 14'b01100001011011;	//15
	   7'd16: SevenSeg = 14'b01100001011111;	//16
	   7'd17: SevenSeg = 14'b01100001110000;	//17
	   7'd18: SevenSeg = 14'b01100001111111;	//18
	   7'd19: SevenSeg = 14'b01100001111011;	//19
	   
	   7'd20: SevenSeg = 14'b11011011111110;	//20
	   7'd21: SevenSeg = 14'b11011010110000;	//21
	   7'd22: SevenSeg = 14'b11011011101101;	//22
	   7'd23: SevenSeg = 14'b11011011111001;	//23
	   7'd24: SevenSeg = 14'b11011010110011;	//24
	   7'd25: SevenSeg = 14'b11011011011011;	//25
	   7'd26: SevenSeg = 14'b11011011011111;	//26
	   7'd27: SevenSeg = 14'b11011011110000;	//27
	   7'd28: SevenSeg = 14'b11011011111111;	//28
	   7'd29: SevenSeg = 14'b11011011111011;	//29
	   
	   7'd30: SevenSeg = 14'b11110011111110;
	   7'd31: SevenSeg = 14'b11110010110000;
	   7'd32: SevenSeg = 14'b11110011101101;
	   7'd33: SevenSeg = 14'b11110011111001;
	   7'd34: SevenSeg = 14'b11110010110011;
	   7'd35: SevenSeg = 14'b11110011011011;
	   7'd36: SevenSeg = 14'b11110011011111;
	   7'd37: SevenSeg = 14'b11110011110000;
	   7'd38: SevenSeg = 14'b11110011111111;
	   7'd39: SevenSeg = 14'b11110011111011;
	   
	   7'd40: SevenSeg = 14'b01100111111110;
	   7'd41: SevenSeg = 14'b01100110110000;
	   7'd42: SevenSeg = 14'b01100111101101;
	   7'd43: SevenSeg = 14'b01100111111001;
	   7'd44: SevenSeg = 14'b01100110110011;
	   7'd45: SevenSeg = 14'b01100111011011;
	   7'd46: SevenSeg = 14'b01100111011111;
	   7'd47: SevenSeg = 14'b01100111110000;
	   7'd48: SevenSeg = 14'b01100111111111;
	   7'd49: SevenSeg = 14'b01100111111011;
	   
	   7'd50: SevenSeg = 14'b10110111111110;
	   7'd51: SevenSeg = 14'b10110110110000;
	   7'd52: SevenSeg = 14'b10110111101101;
	   7'd53: SevenSeg = 14'b10110111111001;
	   7'd54: SevenSeg = 14'b10110110110011;
	   7'd55: SevenSeg = 14'b10110111011011;
	   7'd56: SevenSeg = 14'b10110111011111;
	   7'd57: SevenSeg = 14'b10110111110000;
	   7'd58: SevenSeg = 14'b10110111111111;
	   7'd59: SevenSeg = 14'b10110111111011;
	   
	   7'd60: SevenSeg = 14'b10111111111110;
	   7'd61: SevenSeg = 14'b10111110110000;
	   7'd62: SevenSeg = 14'b10111111101101;
	   7'd63: SevenSeg = 14'b10111111111001;
	   7'd64: SevenSeg = 14'b10111110110011;
	   7'd65: SevenSeg = 14'b10111111011011;
	   7'd66: SevenSeg = 14'b10111111011111;
	   7'd67: SevenSeg = 14'b10111111110000;
	   7'd68: SevenSeg = 14'b10111111111111;
	   7'd69: SevenSeg = 14'b10111111111011;
	   
	   7'd70: SevenSeg = 14'b11100001111110;
	   7'd71: SevenSeg = 14'b11100000110000;
	   7'd72: SevenSeg = 14'b11100001101101;
	   7'd73: SevenSeg = 14'b11100001111001;
	   7'd74: SevenSeg = 14'b11100000110011;
	   7'd75: SevenSeg = 14'b11100001011011;
	   7'd76: SevenSeg = 14'b11100001011111;
	   7'd77: SevenSeg = 14'b11100001110000;
	   7'd78: SevenSeg = 14'b11100001111111;
	   7'd79: SevenSeg = 14'b11100001111011;
	   
	   7'd80: SevenSeg = 14'b11111111111110;
	   7'd81: SevenSeg = 14'b11111110110000;
	   7'd82: SevenSeg = 14'b11111111101101;
	   7'd83: SevenSeg = 14'b11111111111001;
	   7'd84: SevenSeg = 14'b11111110110011;
	   7'd85: SevenSeg = 14'b11111111011011;
	   7'd86: SevenSeg = 14'b11111111011111;
	   7'd87: SevenSeg = 14'b11111111110000;
	   7'd88: SevenSeg = 14'b11111111111111;
	   7'd89: SevenSeg = 14'b11111111111011;
	   
	   7'd90: SevenSeg = 14'b11110111111110;
	   7'd91: SevenSeg = 14'b11110110110000;
	   7'd92: SevenSeg = 14'b11110111101101;
	   7'd93: SevenSeg = 14'b11110111111001;
	   7'd94: SevenSeg = 14'b11110110110011;
	   7'd95: SevenSeg = 14'b11110111011011;
	   7'd96: SevenSeg = 14'b11110111011111;
	   7'd97: SevenSeg = 14'b11110111110000;
	   7'd98: SevenSeg = 14'b11110111111111;
	   7'd99: SevenSeg = 14'b11110111111011;
		
	 default: SevenSeg = 14'b11111100111110;	//OV
	endcase

	assign {A1, B1, C1, D1, E1, F1, G1,
			A2, B2, C2, D2, E2, F2, G2} = SevenSeg;
	
endmodule
