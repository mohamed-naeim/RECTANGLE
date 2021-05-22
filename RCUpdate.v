module RCupdate (input [4:0] RC,output reg [4:0] out);

always @(*)  begin

 out[0] = RC[4] ^ RC[2];
 out[4:1] = RC [3:0];

end
endmodule
