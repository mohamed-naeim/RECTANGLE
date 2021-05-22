module Top_Mod (input [63:0] plaintext, input[79:0] inkey,
                input clk,input R,input ED,
                output reg [63:0] output_text
		);

wire [63:0] text;
wire [63:0] dectext;
wire [79:0] key;
wire [79:0] deckey;
wire [4:0] RC_out;
wire [4:0] decRC_out;
wire [63:0] regtext;
wire [79:0] regkey;
wire [4:0] i;
wire [4:0] RC;
wire  [63:0] ciphertext;

wire  [63:0] out_text;


Reg_update reg1 (plaintext ,text,dectext, inkey ,key,deckey,clk, R,ED,RC_out,decRC_out,regtext, regkey,i,RC);

text_update tex1 (regtext,regkey[63:0],i,text,ciphertext);

key_update kep1(regkey, RC, key);

key_updatedec kepd1(regkey,RC,deckey);

text_updatedec textdec1 (regtext,deckey[63:0],i,dectext,out_text);

RCupdate RCp1 (RC,RC_out);

RCUpdatedec RCpd1 (RC,decRC_out);

always @(*) begin
if (ED == 1) output_text = ciphertext;
else output_text = out_text;
end

endmodule 
