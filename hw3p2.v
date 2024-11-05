`timescale 1ps/10ps

module hw3p2(CIN,A,B,COUT,S);
    input CIN,A,B;
    output COUT,S;
    assign S = CIN^(A^B);
    assign COUT = (A&B)|(CIN&A)|(CIN&B);
endmodule