`timescale 1ns/10ps

module alarm_test;
    reg PANIC,ENABLE,EXITING,WINDOW,DOOR,GARAGE;
    wire ALARM;

    alarm doubile(
        PANIC,ENABLE,EXITING,WINDOW,DOOR,GARAGE,ALARM
    );

    initial
        begin
            // first case - should be alarm = 0
            assign PANIC = 0;
            assign EABLE = 1;
            assign EXITING = 1;
            assign WINDOW = 1;
            assign DOOR = 0;
            assign GARAGE = 1;
            #20
            // second case - should be alarm = 1
            assign EXITING = 0;
            #20
            // third case - should be alarm = 0
            assign DOOR = 1;
            #20
            // fourth case - should be alarm = 1
            assign WINDOW = 0;
            #20
            $finish;
        end
endmodule