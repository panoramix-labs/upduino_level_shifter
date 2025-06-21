
kmodule top (
	output PIN_3V3_0,
	input  PIN_VIO_0,

	input  PIN_3V3_1,
	output PIN_VIO_1,

	output PIN_3V3_2,
	input  PIN_VIO_2,

	input  PIN_3V3_3,
	output PIN_VIO_3,

	output PIN_3V3_4,
	input  PIN_VIO_4,

	input  PIN_3V3_5,
	output PIN_VIO_5,

	output PIN_3V3_6,
	input  PIN_VIO_6,

	input  PIN_3V3_7,
	output PIN_VIO_7,
);

  /* UART 0 */
  assign PIN_3V3_0 = PIN_VIO_0; /* 3V3 => VIO */
  assign PIN_VIO_1 = PIN_3V3_1; /* 3V3 <= VIO */

  /* UART 1 */
  assign PIN_3V3_2 = PIN_VIO_2; /* 3V3 => VIO */
  assign PIN_VIO_3 = PIN_3V3_3; /* 3V3 <= VIO */

  /* UART 2 */
  assign PIN_3V3_4 = PIN_VIO_4; /* 3V3 => VIO */
  assign PIN_VIO_5 = PIN_3V3_5; /* 3V3 <= VIO */

  /* UART 3 */
  assign PIN_3V3_6 = PIN_VIO_6; /* 3V3 => VIO */
  assign PIN_VIO_7 = PIN_3V3_7; /* 3V3 <= VIO */

endmodule
