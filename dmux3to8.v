module dmux3to8(
	q,
	clk,
	reset,
	led1, led2, led3, led4, led5, led6, led7
);
	
	//what are the input ports and their sizes
	input clk , reset;
	input [2:0]q;
    //what are the output ports and their sizes.
    output led1, led2, led3, led4, led5, led6, led7; 
    //Internal variables
    reg [7:0] Data_out;

   
  always @(q)
    case (q)   //case statement. Check all the 8 combinations.
        3'b000 : Data_out = 8'b00000001;
        3'b001 : Data_out = 8'b00000010;
        3'b010 : Data_out = 8'b00000100;
        3'b011 : Data_out = 8'b00001000;
        3'b100 : Data_out = 8'b00010000;
        3'b101 : Data_out = 8'b00100000;
        3'b110 : Data_out = 8'b01000000;
        3'b111 : Data_out = 8'b10000000;
    endcase

	assign led1 = Data_out[1];
	assign led2 = Data_out[2];
	assign led3 = Data_out[3];
	assign led4 = Data_out[4];
	assign led5 = Data_out[5];
	assign led6 = Data_out[6];
	assign led7 = Data_out[7];
    
endmodule
