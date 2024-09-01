// Author: Troy Kaufman
// Email: tkaufman@g.hmc.edu
// This module creates a clock divider that blinks an LED at 2.5 Hz. XOR and AND logic is performed on LEDs 0 and 1 respectively. 

module led_controller (input logic int_osc, reset,
                        input logic [3:0] s,
                        output logic [2:0] led);
				
    logic [24:0] counter;

    //create a clock divider to set led[2] at 2.4 Hz. Clock is set t 48 MHz
    always_ff @(posedge int_osc) begin
            //48MHz / (2.4Hz * 2) = 10 million...
            //Waiting 10 million clock cycles will produce a 2.4 Hz signal. A 2.403 Hz signal was observed on the oscilloscope. 
            if (~reset) 
                begin
                    counter <= 0;
					led[2] <= 0;
                end
            else if (counter == 'd10000000) 
                begin 
                    counter <= 0;
                    led[2] <= ~led[2];
                end 
            else  
				begin
					counter <= counter + 1;
					led[2] <= led[2];
				end
        end

    //perform logic for led[1:0]
    assign led[0] = s[1] ^ s[0];
    assign led[1] = s[3] & s[2];

endmodule