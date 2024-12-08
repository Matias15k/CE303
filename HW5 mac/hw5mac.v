`timescale 1ps/1ps
module hw5mac(
    input signed [3:0] IN, W,
    input clk,
    input rstb,
    output signed reg[11:0]OUT
    reg signed A,
    reg signed B,
);
    always @(posedge clk or negedge rstb) begin
    
        if(~rstb) begin
            counter = 0;
            A = 0;
            B = 0;
            OUT = 0;
            
        end else if(counter < 9) begin
            counter = counter + 1;
            A = IN*W;
            B = A+B;

        end else if(counter == 9) begin
            counter = 0;
            OUT = B;
            B = 0;
            A = IN*W;
        end else if(counter > 9) begin
            counter = 0;
            A = 0;
            B = 0;
            OUT = 0;
        end
    end
        
endmodule