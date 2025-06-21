
module top (
  input  PIN_3V3_31,
  output PIN_VIO_44,

  output PIN_3V3_37,
  input  PIN_VIO_4,

  input  PIN_3V3_34,
  output PIN_VIO_3,

  output PIN_3V3_43,
  input  PIN_VIO_48,

  input  PIN_3V3_36,
  output PIN_VIO_45,

  output PIN_3V3_42,
  input  PIN_VIO_47,

  input  PIN_3V3_38,
  output PIN_VIO_46,

  output PIN_3V3_28,
  input  PIN_VIO_2,
);

  /* UART 0 */
  assign PIN_VIO_44 = PIN_3V3_31;
  assign PIN_3V3_37 = PIN_VIO_4;

  /* UART 1 */
  assign PIN_VIO_3  = PIN_3V3_34;
  assign PIN_3V3_43 = PIN_VIO_48;

  /* UART 2 */
  assign PIN_VIO_45 = PIN_3V3_36;
  assign PIN_3V3_42 = PIN_VIO_47;

  /* UART 3 */
  assign PIN_VIO_46 = PIN_3V3_38;
  assign PIN_3V3_28 = PIN_VIO_2;

endmodule
