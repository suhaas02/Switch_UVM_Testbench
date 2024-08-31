class dest_config extends uvm_object; 
	`uvm_object_utils(dest_config)

	virtual switch_if vif; 
	function new(string name = "dest_config"); 
		super.new(name); 
	endfunction 
endclass

