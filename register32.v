//32-bit D Flip-Flop with Enable



module register32
(
  output reg[31:0] q,
  input[31:0] d,
  input wrenable,
  input clk

);
    integer i; //used in for-loop

    always @(posedge clk) begin
      if(wrenable) begin
        q[31] <= d[31];
        q[30] <= d[30];
        q[29] <= d[29];
        q[28] <= d[28];
        q[27] <= d[27];
        q[26] <= d[26];
        q[25] <= d[25];
        q[24] <= d[24];
        q[23] <= d[23];
        q[22] <= d[22];
        q[21] <= d[21];
        q[20] <= d[20];
        q[19] <= d[19];
        q[18] <= d[18];
        q[17] <= d[17];
        q[16] <= d[16];
        q[15] <= d[15];
        q[14] <= d[14];
        q[13] <= d[13];
        q[12] <= d[12];
        q[11] <= d[11];
        q[10] <= d[10];
        q[9]  <= d[9];
        q[8]  <= d[8];
        q[7]  <= d[7];
        q[6]  <= d[6];
        q[5]  <= d[5];
        q[4]  <= d[4];
        q[3]  <= d[3];
        q[2]  <= d[2];
        q[1]  <= d[1];
        q[0]  <= d[0];
      end
    end

endmodule
