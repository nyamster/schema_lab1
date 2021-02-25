`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2021 15:46:37
// Design Name: 
// Module Name: main_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main_test;

reg a0, a1, d;
wire f0, f1, f2, f3;

initial begin
    a0 = 1;
    a1 = 0;
    d = 1;
end
   
always
    #10 a0 = ~a0;
    
always
    #5 a1 = ~a1;


main mux (
    .d(d),
    .a0(a0),
    .a1(a1),
    .f0 (f0),
    .f1 (f1),
    .f2 (f2),
    .f3 (f3)
);

endmodule
