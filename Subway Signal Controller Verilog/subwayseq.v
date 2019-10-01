module subwayseq(clk,reset,p1,p2,out,crntSt,nxtSt);
input clk,reset,p1,p2;
output out,crntSt,nxtSt;

reg[2:0] crntSt;
reg[2:0] nxtSt;
reg out;

localparam s0=3'b000, s
1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100, s5=3'b101;

always@ (posedge clk)

	if(reset)
	
		crntSt<=s0;
		
	else
	    crntSt <= nxtSt; 
	    
	    
always@ (p1 or p2 or crntSt)

	begin
	
		nxtSt <= crntSt;
		
		case(crntSt)
		
			s0:
				begin
				
					if (p1 & !p2)
						begin
							nxtSt<=s1;
							out<=1;
						end
					else if (!p1 & p2)
						begin
							nxtSt<=s5;
							out=0;
						end
					else
						begin
							nxtSt<=s0;
							out=0;
						end
				end
			
			s1:
				begin
				
					if (!p1 & p2)
						begin
							nxtSt<=s2;
							out<=1;
						end
					else if(p1 & !p2)
						begin
							nxtSt<=s0;
							out<=1;
						end
					else
						begin
							nxtSt<=s1;
							out<=1;
						end
				end
			
			s2:
				begin
				
					if (p1 & !p2)
						begin
							nxtSt<=s3;
							out<=1;
						end
					else
						begin
							nxtSt<=s2;
							out=1;
						end
				end
			
			s3:
				begin
				
					if (!p1 & p2)
						begin
							nxtSt<=s4;
							out<=1;
						end
					else if(p1 & !p2)
						begin
							nxtSt<=s2;
							out<=1;
						end
					else
						begin
							nxtSt<=s3;
							out<=1;
						end
				end
			
			s4:
				begin
				
					if (!p1 & p2)
						begin
							nxtSt<=s5;
							out<=1;
						end
					else
						begin
							nxtSt<=s4;
							out<=1;
						end
				end
			s5:
			
				begin
					
					if (p1 & !p2)
						begin
							nxtSt<=s0;
							out<=0;
						end
					else if(!p1 & p2)
						begin
							nxtSt<=s4;
							out<=0;
						end
					else
						begin
							nxtSt<=s5;
							out<=0;
						end
					end
		endcase
	end
endmodule
