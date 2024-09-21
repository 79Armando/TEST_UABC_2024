module seg7 (
  input wire [3:0] digit,
  output reg[6:0] segments
);

always @(*) begin
             
  case(digit)
            4'b0000: seg = 7'b1110111; 
            4'b0001: seg = 7'b1010000; 
            4'b0010: seg = 7'b0110111; 
            4'b0011: seg = 7'b1110111; 
            4'b0100: seg = 7'b1010100;
            4'b0101: seg = 7'b1011110;
            4'b0110: seg = 7'b1011100;
         //   4'b0111: seg = 7'b1111000;
         //   4'b1000: seg = 7'b0000000;
         //   4'b1001: seg = 7'b0010000;
            default: seg = 7'b1111111;
        endcase
    end
endmodule
