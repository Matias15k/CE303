`timescale 1ns/1ps

module hw5mac_testbench;

    reg signed [3:0] IN,W;
    reg clk, rstb;
    wire signed [11:0] OUT; 

    mac mymac(IN,W,clk,rstb,OUT);

    always begin

        IN = 0;
        W = 0;
        rstb = 1;
        clk = 1;      
        repeat(19) begin
            #0.5
            clk = 0;
            
            #0.5
            clk = 1;
            IN = IN + 1;
            W = W + 2;
        end
        $finish;
    end

endmodule