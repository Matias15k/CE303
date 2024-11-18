`timescale 1ns/10ps

module hw4alu_testbench;
    reg [7:0] a,b;
    reg [2:0] F;
    wire [7:0] Q;
    wire [0:0] Cout;

    hw4alu alu(a,b,F,Q,Cout);

    always
    begin

        a = 8'b01101101;
        b = 8'b00110110;
        F = 3'b000;
        #15
        F = 3'b001;
        #15
        F = 3'b010;
        #15
        F = 3'b011;
        #15
        F = 3'b100;
        #15
        F = 3'b101;
        #15
        F = 3'b110;
        #15
        F = 3'b111;
        #15

        $finish;
    end
endmodule