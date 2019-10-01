module threealu(
		input [2:0]          A,B,
		input [1:0]          Sel,
		output[3:0]          Out,
		output reg[3:0]      result,
		output reg[13:0]      z 
		);
		
	assign Out = result;

	always
	begin
		case(Sel)
			2'b00: result = A+B;
			2'b01: result = A-B;
			2'b10: result = A^B;			
			2'b11: result = A<<1;

		 endcase

		case (result[3:0])
				4'b0000 :       	                    //Decimal 0
				z = 14'b10000001000000;
				
				4'b0001 :    		                    //Decimal 1
				z = 14'b10000001111001  ;
				
				4'b0010 :  		                        //Decimal 2
				z = 14'b10000000100100 ;
				 
				4'b0011 : 		                        //Decimal 3
				z = 14'b10000000110000 ;
				
				4'b0100 :		                        //Decimal 4
				z = 14'b10000000011001 ;
				
				4'b0101 :		                        //Decimal 5
				z = 14'b10000000010010 ;
				  
				4'b0110 :		                        //Decimal 6
				z = 14'b10000000000010 ;
				
				4'b0111 :		                        //Decimal 7
				z = 14'b10000001111000;
				
				4'b1000 :     	                        //Decimal 8
				z = 14'b10000000000000;
				
				4'b1001 :    		                    //Decimal 9
				z = 14'b10000000010000;
				
				4'b1010 :  		                       //Decimal 10
				z = 14'b11110011000000; 
				
				4'b1011 : 		                       //Decimal 11
				z = 14'b11110011111001;
				
				4'b1100 :		                       //Decimal 12
				z = 14'b11110010100100 ;
				
				4'b1101 :		                       //Decimal 13
				z = 14'b11110010110000 ;
				
				4'b1110 :		                       //Decimal 14
				z = 14'b11110010011001 ;
				
				4'b1111 :	                           //Decimal 15
				z = 14'b11110010010010 ;
      endcase      
    end
    	
endmodule



   
 
 

 

