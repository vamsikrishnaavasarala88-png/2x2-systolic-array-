module systolic_tb;

reg clk;
reg reset;

reg [7:0] A1, A2;
reg [7:0] B1, B2;

wire [15:0] C1, C2, C3, C4;

systolic_array_2x2 uut (
    .clk(clk),
    .reset(reset),
    .A1(A1),
    .A2(A2),
    .B1(B1),
    .B2(B2),
    .C1(C1),
    .C2(C2),
    .C3(C3),
    .C4(C4)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $monitor("Time=%0t | C1=%d C2=%d C3=%d C4=%d",
              $time, C1, C2, C3, C4);

    // Initial values
    clk = 0;
    reset = 1;

    A1 = 0;
    A2 = 0;
    B1 = 0;
    B2 = 0;

    // Reset active
    #10 reset = 0;

    // Apply inputs
    #10;
    A1 = 2;
    A2 = 3;

    B1 = 4;
    B2 = 5;

    #40;

    $finish;

end

endmodule
