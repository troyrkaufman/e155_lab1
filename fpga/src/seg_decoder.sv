// Author: Troy Kaufman
// Email: tkaufman@g.hmc.edu
// 

module seg_decoder (input logic [3:0] s,
                    output logic [6:0] seg);
    
    //Properly decode the seven segement display
    always_comb
        case (s)
            0:      seg = 7'b100_0000;
            1:      seg = 7'b111_1001; 
            2:      seg = 7'b010_0100;
            3:      seg = 7'b011_0000;
            4:      seg = 7'b001_1001;
            5:      seg = 7'b001_0010;
            6:      seg = 7'b000_0010;
            7:      seg = 7'b111_1000;
            8:      seg = 7'b000_0000;
            9:      seg = 7'b001_1000;
            10:     seg = 7'b000_1000;
            11:     seg = 7'b000_0011;
            12:     seg = 7'b100_0110;
            13:     seg = 7'b010_0001;
            14:     seg = 7'b000_0110;
            15:     seg = 7'b000_1110;
            default: seg = 7'b100_0000;
        endcase

endmodule