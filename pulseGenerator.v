module pulse_generator(clk,reset,s,x,P,L);
    input clk,reset,s,x;//Generate a single pulse when s=1
    output reg P,L; //and generate multiple pulses when
    localparam s0=2'b00,//s=1 and x=1.
               s1=2'b01,
               s2=2'b10,
               s3=2'b11;
    reg [1:0]state;
    reg [1:0]next_state;
    initial state<=s0;
    always@(posedge clk)
        begin
            state<=next_state;
        end
    always@(posedge clk)
        begin
            if(reset)
                next_state<=s0;
            else if(!reset)
                begin
                    case(state)
                        s0: begin
                            if(s==1)
                                next_state<=s1;
                            else if(s==0)
                                next_state<=s0;
                        end
                        s1: begin
                            if(s==1)
                                next_state<=s2;
                            else if(s==0)
                                next_state<=s0;
                        end
                        s2: begin
                            if((s==1)&&(x==0))
                                next_state<=s3;
                            else if((s==1)&&(x==1))
                                next_state<=s1;
                            else if(s==0)
                                next_state<=s0;
                        end
                        s3: begin
                            if((s==1)&&(x==1))
                                next_state<=s1;
                            else if((s==1)&&(x==0))
                                next_state<=s3;
                            else if(s==0)
                                next_state<=s0;
                        end
                    endcase
                end
        end
    always@(state)
        begin
            case(state)
                s0:begin
                    P=0;
                    L=0;
                end
                s1:begin
                    P=1;
                    L=1;
                end
                s2:begin
                    P=0;
                    L=1;
                end
                s3:begin
                    P=0;
                    L=1;
                end
                default:begin
                    P=0;
                    L=0;
                end
            endcase
        end
endmodule