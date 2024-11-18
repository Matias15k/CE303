`timescale 1ps/1ps
module hw4alu(
    input [7:0] a,b,
    input [2:0] F,
    output [7:0] Q,
    output [0:0] Cout
);
    assign {Cout,Q} = 
        (F == 3'b000) ? a+b :
        (F == 3'b001) ? a-b :
        (F == 3'b010) ? {1'bx,a|b} :
        (F == 3'b011) ? {1'bx,a&b} :
        (F == 3'b100) ? {1'bx,a^b} :
        (F == 3'b101) ? {1'bx,~a} :
        (F == 3'b110) ? {1'bx,a} << 1 : a >> 1 ;
endmodule