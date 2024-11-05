`timescale 1ps/10ps

module hw3p5_testbench;
    reg [2:0] A;
    reg [2:0] B;
    wire [5:0] S;

    hw3p5 Multiply(A,B,S);

    initial begin
        A = 0;
        B = 0;
        repeat(8) begin
            repeat(7) 
                begin
                    #10
                    A = A + 1;
                end
            #10
            B = B + 1;
            A = 0;
        end
    end
endmodule