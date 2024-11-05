`timescale 1ps/1ps

module hw3p1(A0,A1,EN,Y0,Y1,Y2,Y3);
    input A0,A1,EN;
    output Y0,Y1,Y2,Y3;
    assign Y0 = ~A0&~A1&EN;
    assign Y1 = A0&~A1&EN;
    assign Y2 = ~A0&A1&EN;
    assign Y3 = A0&A1&EN;
endmodule