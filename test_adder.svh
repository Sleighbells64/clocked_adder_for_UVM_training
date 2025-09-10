


class test_adder extends uvm_test;
  `uvm_component_utils(test_adder)

  function new(string name = "test_adder", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction


  task run_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "Hello World from counterTest", UVM_HIGH); // get_type_name == test_adder
    super.run_phase(phase);
  endtask

endclass

