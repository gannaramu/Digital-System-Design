module logmul(
		input [4:0]          A,B,
		output reg[8:0]        z, x,y,		
		output reg[9:0]        Out,
		output reg[6:0]       led1,
		output reg[6:0]       led2,
		output reg[6:0]       led3  
);
		
		
		reg Out1;
		reg Out2;
		reg Out3;
	
	
	always @*
		begin
		
			if (A==0 | B==0)
				Out = 0;
			else
				x = log_num(A);
				y = log_num(B);
		
				z = x + y;
		
				Out = out(z);
		
	

   
	//Out1 = Out%10;
	//Out2 = (Out%100-Out1)/10;
	//Out3 = (Out-Out2)/100;

		case(Out%10)
				0 :       	                    //Decimal 0
				led1 = 7'b1000000;
				
				1 :    		                    //Decimal 1
				led1 = 7'b1111001  ;
				
				2 :  		                    //Decimal 2
				led1 = 7'b0100100 ;
				 
				3 : 		                    //Decimal 3
				led1 = 7'b0110000 ;
				
				4 :		                        //Decimal 4
				led1 = 7'b0011001 ;
				
				5 :		                        //Decimal 5
				led1 = 7'b0010010 ;
				  
				6 :		                        //Decimal 6
				led1 = 7'b0000010 ;
				
				7 :		                        //Decimal 7
				led1 = 7'b1111000;
				
				8 :     	                    //Decimal 8
				led1 = 7'b0000000;
				
				9 :    		                    //Decimal 9
				led1 = 7'b0010000;
		endcase
		
		case((Out%100-Out1)/10)
				0 :       	                    //Decimal 0
				led2 = 7'b1000000;
				
				1 :    		                    //Decimal 1
				led2 = 7'b1111001  ;
				
				2 :  		                    //Decimal 2
				led2 = 7'b0100100 ;
				 
				3 : 		                    //Decimal 3
				led2 = 7'b0110000 ;
				
				4 :		                        //Decimal 4
				led2 = 7'b0011001 ;
				
				5 :		                        //Decimal 5
				led2 = 7'b0010010 ;
				  
				6 :		                        //Decimal 6
				led2 = 7'b0000010 ;
				
				7 :		                        //Decimal 7
				led2 = 7'b1111000;
				
				8 :     	                    //Decimal 8
				led2 = 7'b0000000;
				
				9 :    		                    //Decimal 9
				led2 = 7'b0010000;
		endcase
		
		case((Out-Out2)/100)
				0 :       	                    //Decimal 0
				led3 = 7'b1000000;
				
				1 :    		                    //Decimal 1
				led3 = 7'b1111001  ;
				
				2 :  		                    //Decimal 2
				led3 = 7'b0100100 ;
				 
				3 : 		                    //Decimal 3
				led3 = 7'b0110000 ;
				
				4 :		                        //Decimal 4
				led3 = 7'b0011001 ;
				
				5 :		                        //Decimal 5
				led3 = 7'b0010010 ;
				  
				6 :		                        //Decimal 6
				led3 = 7'b0000010 ;
				
				7 :		                        //Decimal 7
				led3 = 7'b1111000;
				
				8 :     	                    //Decimal 8
				led3 = 7'b0000000;
				
				9 :    		                    //Decimal 9
				led3 = 7'b0010000;
		endcase
end
	
function [8:0] log_num;
		input[4:0] dec_num;
	
		begin
			case (dec_num)
				5'd0:       	     		                //Decimal 0
				log_num = 9'b111111111;
				
				5'd1 :       	     		                //Decimal 1
				log_num = 9'b000000000;
				
				5'd2 :       	     		                //Decimal 2
				log_num = 9'b000011110;
				 
				5'd3 :       	     		                //Decimal 3
				log_num = 9'b000101111;
				
				5'd4 :     		                        //Decimal 4
				log_num = 9'b000111100;
				
				5'd5 :       	     		                //Decimal 5
				log_num = 9'b001000101;
				  
				5'd6 :       	     		                //Decimal 6
				log_num = 9'b001001101;
				
				5'd7 :       	     		                //Decimal 7
				log_num = 9'b001010100;
				
				5'd8 :       	     		                //Decimal 8
				log_num = 9'b001011010;
				
				5'd9 :       	     		                //Decimal 9
				log_num = 9'b001011111;
				
				5'd10 :       	     		                //Decimal 10
				log_num = 9'b001100100;
				
				5'd11 :       	     		                //Decimal 11
				log_num = 9'b001101000;
				
				5'd12 :       	     		                //Decimal 12
				log_num = 9'b001101011;
				
				5'd13 :       	     		                //Decimal 13
				log_num = 9'b001101111;
				
				5'd14 :       	     		                //Decimal 14
				log_num = 9'b001110010;
				
				5'd15 :       	     		                //Decimal 15
				log_num = 9'b001110101;
				
				5'd16 :       	     		                //Decimal 16
				log_num = 9'b001111000;
				
				5'd17 :       	     		                //Decimal 17
				log_num = 9'b001111011;
				
				5'd18 :       	     		                //Decimal 18
				log_num = 9'b001111101;
				 
				5'd19 :       	     		                //Decimal 19
				log_num = 9'b001111111;
				
				5'd20 :     		                        //Decimal 20
				log_num = 9'b010000010;
				
				5'd21 :       	     		                //Decimal 21
				log_num = 9'b010000100;
				  
				5'd22 :       	     		                //Decimal 22
				log_num = 9'b010000110;
				
				5'd23 :       	     		                //Decimal 23
				log_num = 9'b010001000;
				
				5'd24 :       	     		                //Decimal 24
				log_num = 9'b010001010;
				
				5'd25 :       	     		                //Decimal 25
				log_num = 9'b010001011;
				
				5'd26 :       	     		                //Decimal 26
				log_num = 9'b010001101;
				
				5'd27 :       	     		                //Decimal 27
				log_num = 9'b010001111;
				
				5'd28 :       	     		                //Decimal 28
				log_num = 9'b010010000;
				
				5'd29 :       	     		                //Decimal 29
				log_num = 9'b010010010;
				
				5'd30 :       	     		                //Decimal 30
				log_num = 9'b010010011;
				
				5'd31 :       	     		                //Decimal 31
				log_num = 9'b010010101;
		endcase 
      end     
endfunction


function[9:0] out;
		input[8:0]      log_out;        
	
		begin
			case (log_out)
				9'b001100100 :       	     		                
				out = 10'd10;
				
				9'b010000010 :       	     		           
				out = 10'd20;
				
				9'b010010011 :       	     		       
				out = 10'd30;
				 
				9'b010100000 :       	     		          
				out = 10'd40;
				
				9'b010101001 :       	     		                
				out = 10'd50;
				
				9'b010110001 :       	     		           
				out = 10'd60;
				  
				9'b010111000 :       	     		               
				out = 10'd70;
				
				9'b010111110 :       	     		               
				out = 10'd80;
				
				9'b011000011 :       	     		              
				out = 10'd90;
				
				9'b011001000 :       	     		               
				out = 10'd100;
				 
				9'b011001100 :       	     		               
				out = 10'd110;
				
				9'b011001111 :       	     		              
				out = 10'd120;
				
				9'b011010011 :       	     		              
				out = 10'd130;
				  
				9'b011010110 :       	     		               
				out = 10'd40;
				
				9'b011011001 :       	     		          
				out = 10'd150;
				
				9'b011011100 :       	     		            
				out = 10'd160;
				
				9'b011011111 :       	     		             
				out = 10'd170;
				 
				9'b011100001 :       	     		         
				out = 10'd180;
				
				9'b011100011 :       	     		           
				out = 10'd190;
				
				9'b011100110 :       	     		            
				out = 10'd200;
				  
				9'b011101000 :       	     		            
				out = 10'd210;
				
				9'b011101010 :       	     		            
				out = 10'd220;
				
				9'b011101100 :       	     		         
				out = 10'd230;
				
				9'b011101110 :       	     		       
				out = 10'd240;
				 
				9'b011101111 :       	     		                
				out = 10'd250;
				
				9'b011110001 :       	     		                
				out = 10'd260;
				
				9'b011110011 :       	     		              
				out = 10'd270;
				  
				9'b011110100 :       	     		            
				out = 10'd280;
				
				9'b011110110 :       	     		            
				out = 10'd290;
				
				9'b011110111 :       	     		              
				out = 10'd300;
				
				9'b011111001 :       	     		            
				out = 10'd310;
				  
				9'b011111010 :       	     		           
				out = 10'd320;
				
				9'b011111101 :       	     		           
				out = 10'd340;
				
				9'b011111111 :       	     		             
				out = 10'd360;
				
				9'b100000001 :       	     		                
				out = 10'd380;
				 
				9'b100000100 :       	     		               
				out = 10'd400;
				
				9'b100000110 :       	     		              
				out = 10'd420;
				
				9'b100001000 :       	     		              
				out = 10'd440;
				  
				9'b100001010 :       	     		          
				out = 10'd460;
				
				9'b100001100 :       	     		               
				out = 10'd480;
				
				9'b100001101 :       	     		               
				out = 10'd500;
				
				9'b100001111 :       	     		              
				out = 10'd520;
				 
				9'b100010001 :       	     		           
				out = 10'd540;
				
				9'b100010010 :       	     		             
				out = 10'd560;
				
				9'b100010100 :       	     		              
				out = 10'd580;
				  
				9'b100010101 :       	     		               
				out = 10'd600;
				
				9'b100010111 :       	     		             
				out = 10'd620;
				
				9'b011010110 :       	     		              
				out = 10'd144;
				
				9'b111111111 :       	     		                
				out = 10'd0;
		endcase  
      end    
endfunction 
						
endmodule
