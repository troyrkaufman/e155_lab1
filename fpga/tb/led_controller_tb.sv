// Author: Troy Kaufman
// Email: tkaufman@g.hmc.edu
// 9/2/24
/*
    This is a unit testbench that will need the reader to verify the led_contrller outputs in simulation. Essentially, 
    this testbench test the XOR and AND logic (LED [0] and [1] respectively). The reader will need to use an oscilloscope to verify 
    LED[2]'s frequency. 
*/

module led_controller_tb();
    logic clk, reset;
    logic [3:0] s;
    logic [2:0] led;

    led_controller dut(clk, reset, s, led);

    // Create clock with 20.8 ns period ~ 48 Mhz
    always 
        begin 
            clk = 1; #5; clk = 0; #5;
        end

    // Begin stimulating design
    initial 
        begin
            // Active low reset
            reset = 0; #30; reset = 1; 

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