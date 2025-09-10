interface clocked_adder_if (input logic clk);

  logic nRST;
  logic enable;
  logic [31:0] inputA;
  logic [31:0] inputB;
  logic result;

endinterface
