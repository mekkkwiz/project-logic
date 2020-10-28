module LightManager (
line1,line2,line3,   //tell line to perfrom light
clk,reset
);

output line1,line2,line3;
wire w_1,w_2,w_3;
input clk,reset;

reg idx;
assign idx = 0;

reg [10:0]noteIndex1;
reg [10:0]noteIndex2;
reg [10:0]noteIndex3;

always @(clk)
begin
    w_1 <= noteIndex1[idx];
    w_2 <= noteIndex2[idx];
    w_3 <= noteIndex3[idx];
	idx <= idx+1'b1;
end
    
noteIndex1[0] <=  0;
noteIndex1[1] <=  0;
noteIndex1[2] <=  1;
noteIndex1[3] <=  1;
noteIndex1[4] <=  0;
noteIndex1[5] <=  0;
noteIndex1[6] <=  1;
noteIndex1[7] <=  1;
noteIndex1[8] <=  0;
noteIndex1[9] <=  0;
noteIndex1[10] <= 1;


endmodule
