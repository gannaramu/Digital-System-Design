
module clockdivider( clk ,rst,out_clk, out_clk1, P1, P2, P3, P4, P23, en);
output reg out_clk;
output reg out_clk1;
output reg P1, P2, P3, P4, P23 ;
input clk ;
input rst;
wire[1:0] clock;
output reg en = 1'b0;

always @(negedge clk)
	begin
	
	case(~rst)
		1'b0:
		 out_clk <= 1'b0;
		1'b1:
		 out_clk <= ~out_clk;
	endcase
	end

	
always @(posedge out_clk)
	begin
	en <= 1'b1;
	case(rst)
		1'b0:
		 out_clk1 <= 1'b0;
		1'b1:
		 out_clk1 <= ~out_clk1;
	endcase
	end

assign clock = {out_clk, clk};

	
always @(clock)
	begin
	case (en)
	1'b0:
		begin
			P1 <= 1'b0;
			P2 <= 1'b0;
			P3 <= 1'b0;
			P4 <= 1'b0;
			P23 <= 1'b0;
		end 
	1'b1:
	case(clock)
		
		2'b00: 
		begin
			P1 <= 1'b0;
			P2 <= 1'b0;
			P3 <= 1'b1;
			P4 <= 1'b0;
			P23 <= 1'b1;
		end 
		
		2'b01:
		begin
			P1 <= 1'b0;
			P2 <= 1'b0;
			P3 <= 1'b0;
			P4 <= 1'b1;
			P23 <= 1'b0;

		end 
		
		2'b10:
		begin
			P1 <= 1'b1;
			P2 <= 1'b0;
			P3 <= 1'b0;
			P4 <= 1'b0;
			P23 <= 1'b0;

		end
		
		2'b11:
		begin
			P1 <= 1'b0;
			P2 <= 1'b1;
			P3 <= 1'b0;
			P4 <= 1'b0;
			P23 <= 1'b1;

		end
	endcase
	endcase
	end	
	
endmodule

