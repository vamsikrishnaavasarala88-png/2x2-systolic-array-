module mac_unit (
    input clk,
    input reset,
    input [7:0] A,
    input [7:0] B,
    input [15:0] sum_in,
    output reg [15:0] sum_out
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        sum_out <= 16'd0;
    else
        sum_out <= sum_in + (A * B);
end

endmodule

// 2x2 SYSTOLIC ARRAY

module systolic_array_2x2(
    input clk,
    input reset,

    input [7:0] A1, A2,
    input [7:0] B1, B2,

    output [15:0] C1,
    output [15:0] C2,
    output [15:0] C3,
    output [15:0] C4
);

wire [15:0] s1, s2, s3, s4;

// MAC1
mac_unit MAC1 (
    .clk(clk),
    .reset(reset),
    .A(A1),
    .B(B1),
    .sum_in(16'd0),
    .sum_out(s1)
);

// MAC2
mac_unit MAC2 (
    .clk(clk),
    .reset(reset),
    .A(A1),
    .B(B2),
    .sum_in(16'd0),
    .sum_out(s2)
);

// MAC3
mac_unit MAC3 (
    .clk(clk),
    .reset(reset),
    .A(A2),
    .B(B1),
    .sum_in(16'd0),
    .sum_out(s3)
);

// MAC4
mac_unit MAC4 (
    .clk(clk),
    .reset(reset),
    .A(A2),
    .B(B2),
    .sum_in(16'd0),
    .sum_out(s4)
);

assign C1 = s1;
assign C2 = s2;
assign C3 = s3;
assign C4 = s4;

endmodule
