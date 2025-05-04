module alu(in1,in2,op,out );
input [7:0] in1,in2;
input [2:0] op;
output reg [7:0] out;

    wire [7:0] inv_out;
    wire [7:0] or_out;
    wire [7:0] xor_out;
    wire [7:0] and_out;
    wire [7:0] mul_out;
    wire [7:0] add_out;
    wire [7:0] sub_out;

    assign inv_out = ~in1;
    assign or_out  = in1 | in2;
    assign xor_out = in1 ^ in2;
    assign and_out = in1 & in2;
    assign mul_out = in1[3:0] * in2[3:0];     
    assign add_out = in1 + in2;
    assign sub_out = in1 - in2;

always @(*) begin
case(op)
3'd0: out = inv_out;
3'd1: out = or_out;
3'd2: out = xor_out;
3'd3: out = and_out;
3'd4: out = mul_out;
3'd5: out = add_out;
3'd6: out = sub_out;
default: out = 8'd0;
endcase
end

endmodule
