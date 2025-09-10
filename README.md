# clocked_adder_for_UVM_training
This is the DUT and framework you should use to write your first UVM testbench.

## Check out the UVM_jumpstart as a starting point to write your own testbench.
https://github.com/Purdue-SoCET/UVM-Jumpstart

## before you start writing code
- look over the DUT
  - What are the inputs and outputs?
  - Does the DUT have state? how does that look?
  - What are the edgecases?
  - Can you generate a combination of test sequences to test every possible combinational value and state?
  - What test sequences test the same things, and what tests different behaviour?
- think about what your test sequences should be to functionally verify the adder
- may be helpful to write down a test plan

## test your design repeatedly
- there is an object extended from the uvm_test class with a hello world that is set up to run for you
- make your uvm_test instantiate an object from your uvm_env class with a hello world and run that
- make your uvm_env instantiate an agent object
- repeat until the whole hierarchy can be built properly before filling in the functionality

## run it in vsim with 
- `make run`
