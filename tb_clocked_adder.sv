`timescale 1ns / 1ps

`include "clocked_adder.sv"
`include "clocked_adder_if.svh"
`include "test_adder.svh"
import uvm_pkg::*;

module tb_clocked_adder; 
  parameter int PERIOD = 20; //ns


  logic tb_clk = 0;
  initial begin
    forever #(PERIOD / 2) begin
      tb_clk <= !tb_clk;  // cool oneliner to generate a clock
    end
  end


  clocked_adder_if caif (tb_clk);

  clocked_adder DUT (caif);


  task automatic resetDUT();
    caif.nRST <= 0;
    #(PERIOD * 1);  // wait a full cycle to make sure it resets
    @(negedge tb_clk);  // release on a negedge
    caif.nRST <= 0;
  endtask

  initial begin
    uvm_config_db#(virtual clocked_adder_if )::set(null, "", "clocked_adder_if", caif); // needs to go first
    run_test("test_adder");
  end

endmodule
