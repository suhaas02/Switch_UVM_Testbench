class env_config extends uvm_object; 
	`uvm_object_utils(env_config)
	virtual switch_if vif; 
//	src_config src_cfg; 
//	dest_config dest_cfg;
	uvm_active_passive_enum src_is_active = UVM_ACTIVE; 
	uvm_active_passive_enum dest_is_active = UVM_PASSIVE; 
	function new(string name = "env_config"); 
		super.new(name); 
	endfunction 
endclass
