`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: OOO "Телега любви"
// Engineer: Хафизов Тимур
// 
// Create Date: 25.02.2021 14:30:51
// Design Name: 
// Module Name: main
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


module main(
  input d,
  input a0,
  input a1,
  output f0,
  output f1,
  output f2,
  output f3
    );
    
    wire a0_sel, a1_sel;
    not a0_n(a0_sel, a0);
    not a1_n(a1_sel, a1);
    and f0_a(f0, d, a0_sel, a1_sel);
    and f1_a(f1, d, a0, a1_sel);
    and f2_a(f2, d, a0_sel, a1);
    and f3_a(f3, d, a0, a1);
    
endmodule
