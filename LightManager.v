module LightManager (
line1,//line2,line3,  //tell line to perfrom light
sel				//selector
);

	output line1;//line2,line3;

	input [5:0]sel;

	reg data_out1;
	reg data_out2;
	reg data_out3;



	always @(sel)
		begin
			case (sel)
				6'b000000 : data_out1 = 1'b1;
				6'b000001 : data_out1 = 1'b0;
				6'b000010 : data_out1 = 1'b0;
				6'b000011 : data_out1 = 1'b0;
				6'b000100 : data_out1 = 1'b0;
				6'b000101 : data_out1 = 1'b0;
				6'b000110 : data_out1 = 1'b0;
				6'b000111 : data_out1 = 1'b0;
				6'b001000 : data_out1 = 1'b0;
				6'b001001 : data_out1 = 1'b0;
			endcase

		end


	assign line1 = data_out1;
	// assign line2 = data_out2;
	// assign line3 = data_out3;



endmodule
