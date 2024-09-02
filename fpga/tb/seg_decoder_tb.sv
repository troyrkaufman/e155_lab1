// Author: Troy Kaufman
// Email: tkaufman@g.hmc.edu
// 9/2/24
/*
    This is a unit testbench that will need the reader to verify the seven segment display outputs in simulation. 
    This stimulates the design by providing the design with all switch input combinations (2^4 possibilities). 
*/

module seg_decoder_tb ();
    logic [3:0] s;
    logic [6:0] seg;

    seg_decoder dut (s, seg);

    initial 
        begin   
            #5; s = 'd0;
            #5; s = 'd1;
            #5; s = 'd2;
            #5; s = 'd3;
            #5; s = 'd4;
            #5; s = 'd5;
            #5; s = 'd6;
            #5; s = 'd7;
            #5; s = 'd8;
            #5; s = 'd9;
            #5; s = 'd10;
            #5; s = 'd11;
            #5; s = 'd12;
            #5; s = 'd13;
            #5; s = 'd14;
            #5; s = 'd15;
        end
endmodule 