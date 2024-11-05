`timescale 1ps/1ps

module hw3p5(
    input [2:0] A,
    input [2:0] B,
    output [5:0] S
);
    wire [2:0] P1;
    wire [2:0] P2;
    wire [3:0] P3;
    wire [2:0] P4;
    wire [3:0] P5;

    assign P1 = {A[2]&B[0], A[1]&B[0], A[0]&B[0]};
    assign P2 = {A[2]&B[1], A[1]&B[1], A[0]&B[1]};
    assign P3 = P1+P2[2:1];

    assign P4 = {A[2]&B[2], A[1]&B[2], A[0]&B[2]};
    assign P5 = P4+P3[3:1];
    
    assign S = {P5,P3[0],P1[0]};
endmodule