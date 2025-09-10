module clocked_adder (
  clocked_adder_if caif
);


always_ff @(posedge caif.clk, negedge caif.nRST) begin : ff_clocked_adder
  if(!caif.nRST) begin 
    caif.result <= 0;
  end
  else begin 
    caif.result <= (caif.enable) ? caif.inputA + caif.inputB : caif.result;
  end
  
end

endmodule
