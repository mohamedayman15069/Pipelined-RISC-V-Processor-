`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 03:53:17 PM
// Design Name: 
// Module Name: DataMem
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



module DataMem (input clk, input MemRead, input MemWrite,input [7:0] addr, input [2:0] funct3,input [31:0] data_in, output reg [31:0] data_out);
    reg [7:0] mem [0:255]; // what is max capacity that FBGA can load and store. 
  
        // load word 


    initial begin 
        mem[0]=8'd17; 
        mem[1]=8'd0;
        mem[2]=8'd0; 
        mem[3]=8'd0;
        mem[4]=8'd9;
        mem[5]=0;
        mem[6]=0;
        mem[7]=0;
        mem[8]=8'd25;
        mem[9]=0;
        mem[10]=0;
        mem[11]=0;
        mem[12]=8'd10;
        mem[13]=8'd11;
    end
    always @(*) begin 

        if(MemRead)
        begin 

            case(funct3) // little endian 
            3'b000:  data_out = {{24{mem[addr][7]}},{mem[addr]}};  //lb
            3'b001:  data_out = {{16{mem[addr+1][7]}},mem[addr+1], mem[addr]}; //halfw
            3'b010:  data_out = {mem[addr+3],mem[addr+2], mem[addr+1], mem[addr]}; 
            3'b100:  data_out = {{24{1'b0}},mem[addr]};// lbu 
            3'b101:  data_out = {{16{1'b0}},mem[addr+1],mem[addr]};// lhu  
            default: data_out = 32'b0;    
            endcase

        end
        else 
            data_out = 32'b0; 
        
        end


        // store word 
        always @(posedge clk) begin 

        if(MemWrite)
        begin 
            case(funct3)
            3'b000: mem[addr] = data_in[7:0]; //sb
            3'b001: {mem[addr+1],mem[addr]} = data_in[16:0];//sh
            3'b010: {mem[addr+3], mem[addr+2],mem[addr+1],mem[addr]}= data_in; // sword 
            default : data_out = 32'b0; 
            endcase
        end
        else 
            data_out = 32'b0; 
        end


endmodule