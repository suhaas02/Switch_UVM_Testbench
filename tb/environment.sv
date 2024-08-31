class environment extends uvm_env; 
	`uvm_component_utils(environment)
	src_agent sagth; 
	dest_agent dagth; 
	function new(string name = "environment", uvm_component parent); 
		super.new(name, parent); 
	endfunction 

	function void build_phase(uvm_phase phase); 
		super.build_phase(phase);
		sagth = src_agent::type_id::create("sagth", this); 	
		dagth = dest_agent::type_id::create("dagth", this); 
	endfunction 

endclass
