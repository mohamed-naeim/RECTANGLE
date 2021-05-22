module Reg_update (input [63:0]intext , input [63:0] text,input [63:0] dectext,
                   input [79:0]inkey , input [79:0] key,input [79:0] deckey,
		   input clk, input R,input ED, input [4:0] RC_out,input [4:0] decRC_out,
                   output reg [63:0] regtext,
                   output reg [79:0] regkey, output reg [4:0]i, output reg [4:0] RC);




always @(posedge clk)
begin

if (R ==1)
begin
i=0;
if (ED ==1)begin
regtext = intext;
regkey = inkey;
RC = 5'b00001;
end
else if (ED ==0) begin
regtext = intext ^ inkey[63:0];
regkey = inkey;
RC = 5'b11101;
end
end

else
begin
i=i+1;
if (ED ==1) begin
regtext = text;
regkey=key;
RC = RC_out;
end
else if (ED ==0) begin
regtext = dectext;
regkey = deckey;
RC = decRC_out;

end
end



end

endmodule
