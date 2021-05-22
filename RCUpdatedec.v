module RCUpdatedec (input [4:0] RC,output reg [4:0] out);

always @(*)  begin

 out[4] = RC[0] ^ RC[3];
 out[3:0] = RC [4:1];

end
endmodule
