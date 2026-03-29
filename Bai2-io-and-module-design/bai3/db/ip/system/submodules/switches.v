module switches
( 
	input iCLK,
	input iReset,
	input iChip_select_n,
	input iRead_n,
	input [31:0] iSwitch_data,
	output reg [31:0] oSwitch_reg
);	
	always @(posedge iCLK, negedge iReset) begin
		if(~iReset) begin 
			oSwitch_reg <= 32'b0;
		end 
		else 
			begin 
				if(~iChip_select_n & ~iRead_n) begin 
					oSwitch_reg <= iSwitch_data;
					end
				end
			end
endmodule
