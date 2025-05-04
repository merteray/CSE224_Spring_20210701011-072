module twoscomplement(in,out);
input [7:0] in;
output [7:0] out;


assign out = ~in + 1'b1; // Taking two's complement

endmodule
