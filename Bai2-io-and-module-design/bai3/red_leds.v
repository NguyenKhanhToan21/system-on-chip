module red_leds
( 
	input iCLK,
	input iReset,
	input iChip_select_n,
	input iWrite_n,
	input [31:0] iRed_leds_data,
	output reg [31:0] oRed_leds
);	
	always @(posedge iCLK, negedge iReset) begin
		if(~iReset) begin 
			oRed_leds <= 32'b0;
		end 
		else 
			begin 
				if(~iChip_select_n & ~iWrite_n) begin 
					oRed_leds <= iRed_leds_data;
					end
				end
			end
endmodule
