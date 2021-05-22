
module shiftrow1dec (input [63:0] data_in, output reg [63:0] data_out);
//inputs and outputs

always @(*)
begin

 data_out[15:0] = data_in[15:0];
 data_out[31:16] = {data_in[16],data_in[31:17]} ;
 data_out[47:32] = {data_in[43:32],data_in[47:44]} ;
 data_out[63:48] = {data_in[60:48],data_in[63:61]} ;

end
endmodule
