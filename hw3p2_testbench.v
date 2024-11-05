`timescale 1ps/1ps

module hw3p2_testbench;
    reg C0,A0,B0,A1,B1,A2,B2,A3,B3;
    wire S0,C1,S1,C2,S2,C3,S3,C4;

    hw3p2 ADD0(A0,B0,C0,S0,C1);
    hw3p2 ADD1(A1,B1,C1,S1,C2);
    hw3p2 ADD2(A2,B2,C2,S2,C3);
    phw3p2 ADD3(A3,B3,C3,S3,C4);

    always
        begin
            C0 = 0;
            
            A0 = 0;
            B0 = 0;

            A1 = 1;
            B1 = 1;

            A2 = 1;
            B2 = 0;

            A3 = 0;
            B3 = 1;
            #10

            C0 = 1;
            
            A0 = 1;
            B0 = 0;

            A1 = 0;
            B1 = 1;

            A2 = 0;
            B2 = 0;

            A3 = 1;
            B3 = 1;
            #10

            C0 = 0;
            
            A0 = 0;
            B0 = 1;

            A1 = 1;
            B1 = 0;

            A2 = 1;
            B2 = 1;

            A3 = 0;
            B3 = 0;
            #10

            C0 = 1;
            
            A0 = 1;
            B0 = 1;

            A1 = 0;
            B1 = 0;

            A2 = 0;
            B2 = 1;

            A3 = 1;
            B3 = 0;
            #10
            $finish;
        end
endmodule