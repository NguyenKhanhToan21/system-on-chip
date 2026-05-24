module Bai7(
	input CLOCK_50,
	input [1:0] KEY,
	input [3:0] SW,
	output [6:0] HEX0, HEX1, HEX2,HEX3,HEX4, HEX5
);
	wire [3:0] hex0_data, hex1_data,hex2_data, hex3_data, hex4_data, hex5_data ;
	system Nios_system(
		.clk_clk (CLOCK_50),
		.reset_reset_n (KEY[0]),
		.switches_0_conduit_end_export (SW[3:0]),
		.pio_0_external_connection_export (hex0_data), 
      .pio_1_external_connection_export (hex1_data),
      .pio_2_external_connection_export (hex2_data),
      .pio_3_external_connection_export (hex3_data),
      .pio_4_external_connection_export (hex4_data), 
		.pio_5_external_connection_export (hex5_data),
		.pio_6_external_connection_export (KEY[1])
	);
	decoder u0(
		.iDigit(hex0_data),
		.oHex(HEX0[6:0])
		);
	decoder u1(
		.iDigit(hex1_data),
		.oHex(HEX1[6:0])
		);

	decoder u2(
		.iDigit(hex2_data),
		.oHex(HEX2[6:0])
		);
		decoder u3(
		.iDigit(hex3_data),
		.oHex(HEX3[6:0])
		);
	decoder u4(
		.iDigit(hex4_data),
		.oHex(HEX4[6:0])
		);
		decoder u5(
		.iDigit(hex5_data),
		.oHex(HEX5[6:0])
		);
endmodule
