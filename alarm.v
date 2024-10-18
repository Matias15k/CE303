`timescale 1ns/10ps

//top module
module alarm(PANIC, ENABLE, EXITING, WINDOW, DOOR, GARAGE, ALARM);
    input   PANIC,ENABLE,EXITING,WINDOW,DOOR,GARAGE;
    output  ALARM;

    wire gate1,gate2,gate3;

    nand(gate1,WINDOW,DOOR,GARAGE);
    not(gate2,EXITING);
    and(gate3,ENABLE,gate2,gate1);
    or(ALARM,gate3,PANIC);
endmodule