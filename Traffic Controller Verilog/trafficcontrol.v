module trafficcontrol(clk, reset, c, ts, tl, crntSt, nxtSt, out);
input clk, reset, c, ts, tl;
output out, crntSt, nxtSt;

reg[2:0] crntSt;
reg[2:0] nxtSt;
reg out;

localparam s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100, s5=3'b101, s6=3'b110, s7=3'b111;

always@ (posedge clk)

	if(reset)
	
		crntSt<=s0;
		
	else
	    crntSt <= nxtSt; 
	    
	    
always@ (*)

	begin
	
		nxtSt <= crntSt;
		
		case(crntSt)
		
			s0:
				begin
				
					if (ts==0)
						begin
							nxtSt<=s0;
							out<=0;
						end
					else if (ts==1)
						begin
							nxtSt<=s1;
							out=1;
						end

				end
			
			s1:
				begin
				
					if (ts==0)
						begin
							nxtSt<=s1;
							out<=0;
						end
					else if(ts==1)
						begin
							nxtSt<=s2;
							out<=1;
						end

				end
			
			s2:
				begin
				
					if (tl==0)
						begin
							nxtSt<=s2;
							out<=0;
						end
					else if (tl==1)
						begin
							nxtSt<=s3;
							out=1;
						end
				end
			
			s3:
				begin
				
					if (ts==0)
						begin
							nxtSt<=s3;
							out<=0;
						end
					else if(ts==1 & tl==0)
						begin
							nxtSt<=s4;
							out<=1;
						end

				end
			
			s4:
				begin
				
					if (tl==0)
						begin
							nxtSt<=s4;
							out<=0;
						end
					else if(tl==1)
						begin
							nxtSt<=s5;
							out<=1;
						end
				end
				
			s5:
			
				begin
					
					if (tl==0)
						begin
							nxtSt<=s5;
							out<=0;
						end
					else if(tl==1 & c==0)
						begin
							nxtSt<=s0;
							out<=1;
						end
					else if(tl==1 & c==1)
						begin
							nxtSt<=s6;
							out<=1;
						end
				end
				
				s6:
			
				begin
					
					if(tl==0 & c==1)
						begin
							nxtSt<=s6;
							out<=0;
						end
					else if(tl==1 & c==1)
						begin
							nxtSt<=s7;
							out<=1;
						end
				end
				
				s7:
			
				begin
					
					if (ts==0)
						begin
							nxtSt<=s7;
							out<=0;
						end
					else if(ts==1)
						begin
							nxtSt<=s0;
							out<=1;
						end
				end

		endcase
	end
endmodule
