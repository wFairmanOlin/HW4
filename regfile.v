//------------------------------------------------------------------------------
// MIPS register file
//   width: 32 bits
//   depth: 32 words (reg[0] is static zero register)
//   2 asynchronous read ports
//   1 synchronous, positive edge triggered write port
//------------------------------------------------------------------------------
`include "decoders.v"
`include "register32.v"
`include "register32zero.v"
`include "mux32by32.v"


module regfile
(
output[31:0]	ReadData1,	// Contents of first register read
output[31:0]	ReadData2,	// Contents of second register read
input[31:0]	WriteData,	// Contents to write to register
input[4:0]	ReadRegister1,	// Address of first register to read
input[4:0]	ReadRegister2,	// Address of second register to read
input[4:0]	WriteRegister,	// Address of register to write
input		RegWrite,	// Enable writing of register when High
input		Clk		// Clock (Positive Edge Triggered)
);
wire[31:0] address;
wire[31:0] reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10,
            reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19,
            reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28,
            reg29, reg30, reg31;

  decoder1to32 d1t3(address, RegWrite, WriteRegister);

  register32zero r0(reg0, WriteData, address[0], Clk);
  register32     r1(reg1, WriteData, address[1], Clk);
  register32     r2(reg2, WriteData, address[2], Clk);
  register32     r3(reg3, WriteData, address[3], Clk);
  register32     r4(reg4, WriteData, address[4], Clk);
  register32     r5(reg5, WriteData, address[5], Clk);
  register32     r6(reg6, WriteData, address[6], Clk);
  register32     r7(reg7, WriteData, address[7], Clk);
  register32     r8(reg8, WriteData, address[8], Clk);
  register32     r9(reg9, WriteData, address[9], Clk);
  register32     r10(reg10, WriteData, address[10], Clk);
  register32     r11(reg11, WriteData, address[11], Clk);
  register32     r12(reg12, WriteData, address[12], Clk);
  register32     r13(reg13, WriteData, address[13], Clk);
  register32     r14(reg14, WriteData, address[14], Clk);
  register32     r15(reg15, WriteData, address[15], Clk);
  register32     r16(reg16, WriteData, address[16], Clk);
  register32     r17(reg17, WriteData, address[17], Clk);
  register32     r18(reg18, WriteData, address[18], Clk);
  register32     r19(reg19, WriteData, address[19], Clk);
  register32     r20(reg20, WriteData, address[20], Clk);
  register32     r21(reg21, WriteData, address[21], Clk);
  register32     r22(reg22, WriteData, address[22], Clk);
  register32     r23(reg23, WriteData, address[23], Clk);
  register32     r24(reg24, WriteData, address[24], Clk);
  register32     r25(reg25, WriteData, address[25], Clk);
  register32     r26(reg26, WriteData, address[26], Clk);
  register32     r27(reg27, WriteData, address[27], Clk);
  register32     r28(reg28, WriteData, address[28], Clk);
  register32     r29(reg29, WriteData, address[29], Clk);
  register32     r30(reg30, WriteData, address[30], Clk);
  register32     r31(reg31, WriteData, address[31], Clk);

  mux32to1by32  read1(ReadData1, ReadRegister1, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10,
                      reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19,
                      reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28,
                      reg29, reg30, reg31);

  mux32to1by32  read2(ReadData2, ReadRegister2, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10,
                      reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19,
                      reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28,
                      reg29, reg30, reg31);

endmodule
