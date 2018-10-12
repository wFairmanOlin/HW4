//32-bit D Flip-Flop with Enable



module register32zero
(
  output reg[31:0] q,
  input[31:0] d,
  input wrenable,
  input clk

);
    integer i; //used in for-loop

    always @(posedge clk) begin
      if(wrenable) begin
        q[31] <= 0;
        q[30] <= 0;
        q[29] <= 0;
        q[28] <= 0;
        q[27] <= 0;
        q[26] <= 0;
        q[25] <= 0;
        q[24] <= 0;
        q[23] <= 0;
        q[22] <= 0;
        q[21] <= 0;
        q[20] <= 0;
        q[19] <= 0;
        q[18] <= 0;
        q[17] <= 0;
        q[16] <= 0;
        q[15] <= 0;
        q[14] <= 0;
        q[13] <= 0;
        q[12] <= 0;
        q[11] <= 0;
        q[10] <= 0;
        q[9]  <= 0;
        q[8]  <= 0;
        q[7]  <= 0;
        q[6]  <= 0;
        q[5]  <= 0;
        q[4]  <= 0;
        q[3]  <= 0;
        q[2]  <= 0;
        q[1]  <= 0;
        q[0]  <= 0;
//          for(i=31; i>0; i= i - 1) begin
//            q[i] <= q[i-1];
//          end
//          q[0] <= d;
      end
    end

endmodule
