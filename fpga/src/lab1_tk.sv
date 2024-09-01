// Author: Troy Kaufman
// Email: tkaufman@g.hmc.edu
// 8/31/24
/* This is a top level module that instantiates an LED controller (performs xor and and logic operations as well as blinks an LED at 2.4 Hz).
   Additionally, this module instantiates a 7 segment decoder that sets and resets cathode pins correlated with hex #s (0 - F).

*/
module lab1_tk (input logic reset,
            input logic [3:0] s,
            output logic [2:0] led,
            output logic [6:0] seg);

    

   // led_controller led1(.int_osc(int_osc), .reset(reset), .s(s), .led(led));
   led_controller led1(.reset(reset), .s(s), .led(led));
    seg_decoder    seg1(.s(s), .seg(seg));

endmodule

