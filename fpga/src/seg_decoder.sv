// Author: Troy Kaufman
// Email: tkaufman@g.hmc.edu
// 

module seg_decoder (input logic [3:0] s,
                    output logic [6:0] seg);
    
    //Properly decode the seven segement display
    always_comb
        case (s)
            0:      seg = 7'b000_0001;
            1:      seg = 7'b100_1111; 
            2:      seg = 7'b001_0010;
            3:      seg = 7'b000_0110;
            4:      seg = 7'b100_1100;
            5:      seg = 7'b010_0100;
            6:      seg = 7'b010_0000;
            7:      seg = 7'b000_1110;
            8:      seg = 7'b000_0000;
            9:      seg = 7'b000_1100;
            10:     seg = 7'b000_1000;
            11:     seg = 7'b110_0000;
            12:     seg = 7'b011_0001;
            13:     seg = 7'b100_0010;
            14:     seg = 7'b011_0000;
            15:     seg = 7'b011_1000;
            default: seg = 7'b000_0001;
        endcase

endmodule