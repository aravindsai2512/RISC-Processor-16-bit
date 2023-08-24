module alu_control(
    output reg [2:0] ALU_Cnt,
    input [1:0] ALUOp,
    input [3:0] Opcode
);
    wire [5:0] ALUControlIn;
    assign ALUControlIn = {ALUOp, Opcode};

    always @(ALUControlIn) begin
        case(ALUControlIn)
            6'b10xxxx: ALU_Cnt = 3'b000; // Add
            6'b01xxxx: ALU_Cnt = 3'b001; // Subtract
            // Add more cases for other ALU operations
            // ...
            default: ALU_Cnt = 3'b000; // Default to some operation
        endcase
    end

endmodule
