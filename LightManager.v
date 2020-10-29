module LightManager (
line1,line2,line3,  //tell line to perfrom light
sel				//selector
);

	output line1,line2,line3;

	input [5:0]sel;

	reg data_out1;
	reg data_out2;
	reg data_out3;



	always @(sel)
		begin
			case (sel)
				6'b000000 : data_out1 = 1'b1;
				6'b000001 : data_out1 = 1'b1;
				6'b000010 : data_out1 = 1'b1;
				6'b000011 : data_out1 = 1'b1;
				6'b000100 : data_out1 = 1'b1;
				6'b000101 : data_out1 = 1'b1;
				6'b000110 : data_out1 = 1'b1;
				6'b000111 : data_out1 = 1'b1;
				6'b001000 : data_out1 = 1'b0;
				6'b001001 : data_out1 = 1'b0;
				6'b001010 : data_out1 = 1'b0;
				6'b001011 : data_out1 = 1'b0;
				6'b001100 : data_out1 = 1'b1;
				6'b001101 : data_out1 = 1'b1;
				6'b001110 : data_out1 = 1'b1;
				6'b001111 : data_out1 = 1'b1;
				6'b010000 : data_out1 = 1'b1;
				6'b010001 : data_out1 = 1'b1;
				6'b010010 : data_out1 = 1'b1;
				6'b010011 : data_out1 = 1'b1;
				6'b010100 : data_out1 = 1'b0;
				6'b010101 : data_out1 = 1'b0;
				6'b010110 : data_out1 = 1'b0;
				6'b010111 : data_out1 = 1'b0;
				6'b011000 : data_out1 = 1'b0;
				6'b011001 : data_out1 = 1'b0;
				6'b011010 : data_out1 = 1'b0;
				6'b011011 : data_out1 = 1'b0;
				6'b011100 : data_out1 = 1'b0;
				6'b011101 : data_out1 = 1'b0;
				6'b011110 : data_out1 = 1'b0;
				6'b011111 : data_out1 = 1'b0;
				6'b100000 : data_out1 = 1'b1;
				6'b100001 : data_out1 = 1'b1;
				6'b100010 : data_out1 = 1'b1;
				6'b100011 : data_out1 = 1'b1;
				6'b100100 : data_out1 = 1'b1;
				6'b100101 : data_out1 = 1'b1;
				6'b100110 : data_out1 = 1'b1;
				6'b100111 : data_out1 = 1'b1;
				6'b101000 : data_out1 = 1'b0;
				6'b101001 : data_out1 = 1'b0;
				6'b101010 : data_out1 = 1'b0;
				6'b101011 : data_out1 = 1'b0;
				6'b101100 : data_out1 = 1'b1;
				6'b101101 : data_out1 = 1'b1;
				6'b101110 : data_out1 = 1'b1;
				6'b101111 : data_out1 = 1'b1;
				6'b110000 : data_out1 = 1'b1;
				6'b110001 : data_out1 = 1'b1;
				6'b110010 : data_out1 = 1'b1;
				6'b110011 : data_out1 = 1'b1;
				6'b110100 : data_out1 = 1'b0;
				6'b110101 : data_out1 = 1'b0;
				6'b110110 : data_out1 = 1'b0;
				6'b110111 : data_out1 = 1'b0;
				6'b111000 : data_out1 = 1'b0;
				6'b111001 : data_out1 = 1'b0;
				6'b111010 : data_out1 = 1'b0;
				6'b111011 : data_out1 = 1'b0;
				6'b111100 : data_out1 = 1'b0;
				6'b111101 : data_out1 = 1'b0;
				6'b111110 : data_out1 = 1'b0;
				6'b111111 : data_out1 = 1'b0;

			endcase
			case (sel)
				6'b000000 : data_out2 = 1'b1;
				6'b000001 : data_out2 = 1'b1;
				6'b000010 : data_out2 = 1'b1;
				6'b000011 : data_out2 = 1'b1;
				6'b000100 : data_out2 = 1'b1;
				6'b000101 : data_out2 = 1'b1;
				6'b000110 : data_out2 = 1'b1;
				6'b000111 : data_out2 = 1'b1;
				6'b001000 : data_out2 = 1'b0;
				6'b001001 : data_out2 = 1'b0;
				6'b001010 : data_out2 = 1'b0;
				6'b001011 : data_out2 = 1'b0;
				6'b001100 : data_out2 = 1'b1;
				6'b001101 : data_out2 = 1'b1;
				6'b001110 : data_out2 = 1'b1;
				6'b001111 : data_out2 = 1'b1;
				6'b010000 : data_out2 = 1'b1;
				6'b010001 : data_out2 = 1'b1;
				6'b010010 : data_out2 = 1'b1;
				6'b010011 : data_out2 = 1'b1;
				6'b010100 : data_out2 = 1'b0;
				6'b010101 : data_out2 = 1'b0;
				6'b010110 : data_out2 = 1'b0;
				6'b010111 : data_out2 = 1'b0;
				6'b011000 : data_out2 = 1'b0;
				6'b011001 : data_out2 = 1'b0;
				6'b011010 : data_out2 = 1'b0;
				6'b011011 : data_out2 = 1'b0;
				6'b011100 : data_out2 = 1'b0;
				6'b011101 : data_out2 = 1'b0;
				6'b011110 : data_out2 = 1'b0;
				6'b011111 : data_out2 = 1'b0;
				6'b100000 : data_out2 = 1'b1;
				6'b100001 : data_out2 = 1'b1;
				6'b100010 : data_out2 = 1'b1;
				6'b100011 : data_out2 = 1'b1;
				6'b100100 : data_out2 = 1'b1;
				6'b100101 : data_out2 = 1'b1;
				6'b100110 : data_out2 = 1'b1;
				6'b100111 : data_out2 = 1'b1;
				6'b101000 : data_out2 = 1'b0;
				6'b101001 : data_out2 = 1'b0;
				6'b101010 : data_out2 = 1'b0;
				6'b101011 : data_out2 = 1'b0;
				6'b101100 : data_out2 = 1'b1;
				6'b101101 : data_out2 = 1'b1;
				6'b101110 : data_out2 = 1'b1;
				6'b101111 : data_out2 = 1'b1;
				6'b110000 : data_out2 = 1'b1;
				6'b110001 : data_out2 = 1'b1;
				6'b110010 : data_out2 = 1'b1;
				6'b110011 : data_out2 = 1'b1;
				6'b110100 : data_out2 = 1'b0;
				6'b110101 : data_out2 = 1'b0;
				6'b110110 : data_out2 = 1'b0;
				6'b110111 : data_out2 = 1'b0;
				6'b111000 : data_out2 = 1'b0;
				6'b111001 : data_out2 = 1'b0;
				6'b111010 : data_out2 = 1'b0;
				6'b111011 : data_out2 = 1'b0;
				6'b111100 : data_out2 = 1'b0;
				6'b111101 : data_out2 = 1'b0;
				6'b111110 : data_out2 = 1'b0;
				6'b111111 : data_out2 = 1'b0;

			endcase
			case (sel)
				6'b000000 : data_out3 = 1'b1;
				6'b000001 : data_out3 = 1'b1;
				6'b000010 : data_out3 = 1'b1;
				6'b000011 : data_out3 = 1'b1;
				6'b000100 : data_out3 = 1'b1;
				6'b000101 : data_out3 = 1'b1;
				6'b000110 : data_out3 = 1'b1;
				6'b000111 : data_out3 = 1'b1;
				6'b001000 : data_out3 = 1'b0;
				6'b001001 : data_out3 = 1'b0;
				6'b001010 : data_out3 = 1'b0;
				6'b001011 : data_out3 = 1'b0;
				6'b001100 : data_out3 = 1'b1;
				6'b001101 : data_out3 = 1'b1;
				6'b001110 : data_out3 = 1'b1;
				6'b001111 : data_out3 = 1'b1;
				6'b010000 : data_out3 = 1'b1;
				6'b010001 : data_out3 = 1'b1;
				6'b010010 : data_out3 = 1'b1;
				6'b010011 : data_out3 = 1'b1;
				6'b010100 : data_out3 = 1'b0;
				6'b010101 : data_out3 = 1'b0;
				6'b010110 : data_out3 = 1'b0;
				6'b010111 : data_out3 = 1'b0;
				6'b011000 : data_out3 = 1'b0;
				6'b011001 : data_out3 = 1'b0;
				6'b011010 : data_out3 = 1'b0;
				6'b011011 : data_out3 = 1'b0;
				6'b011100 : data_out3 = 1'b0;
				6'b011101 : data_out3 = 1'b0;
				6'b011110 : data_out3 = 1'b0;
				6'b011111 : data_out3 = 1'b0;
				6'b100000 : data_out3 = 1'b1;
				6'b100001 : data_out3 = 1'b1;
				6'b100010 : data_out3 = 1'b1;
				6'b100011 : data_out3 = 1'b1;
				6'b100100 : data_out3 = 1'b1;
				6'b100101 : data_out3 = 1'b1;
				6'b100110 : data_out3 = 1'b1;
				6'b100111 : data_out3 = 1'b1;
				6'b101000 : data_out3 = 1'b0;
				6'b101001 : data_out3 = 1'b0;
				6'b101010 : data_out3 = 1'b0;
				6'b101011 : data_out3 = 1'b0;
				6'b101100 : data_out3 = 1'b1;
				6'b101101 : data_out3 = 1'b1;
				6'b101110 : data_out3 = 1'b1;
				6'b101111 : data_out3 = 1'b1;
				6'b110000 : data_out3 = 1'b1;
				6'b110001 : data_out3 = 1'b1;
				6'b110010 : data_out3 = 1'b1;
				6'b110011 : data_out3 = 1'b1;
				6'b110100 : data_out3 = 1'b0;
				6'b110101 : data_out3 = 1'b0;
				6'b110110 : data_out3 = 1'b0;
				6'b110111 : data_out3 = 1'b0;
				6'b111000 : data_out3 = 1'b0;
				6'b111001 : data_out3 = 1'b0;
				6'b111010 : data_out3 = 1'b0;
				6'b111011 : data_out3 = 1'b0;
				6'b111100 : data_out3 = 1'b0;
				6'b111101 : data_out3 = 1'b0;
				6'b111110 : data_out3 = 1'b0;
				6'b111111 : data_out3 = 1'b0;

			endcase

		end


	assign line1 = data_out1;
	assign line2 = data_out2;
	assign line3 = data_out3;



endmodule
