
module shiftrow1 (input [63:0] data_in, output reg [63:0] data_out);
//inputs and outputs

always @(*)
begin

 data_out[15:0] = data_in[15:0];
 data_out[31:16] = {data_in[30:16],data_in[31]} ;
 data_out[47:32] = {data_in[35:32],data_in[47:36]} ;
 data_out[63:48] = {data_in[50:48],data_in[63:51]} ;

end
endmodule
