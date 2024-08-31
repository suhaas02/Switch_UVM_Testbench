class src_config extends uvm_object; 
	`uvm_object_utils(src_config)

	virtual switch_if vif; 
	function new(string name = "src_config"); 
		super.new(name); 
	endfunction 
endclass
