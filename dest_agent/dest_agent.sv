class dest_agent extends uvm_agent; 
	`uvm_component_utils(dest_agent)
		
	dest_monitor monh; 
//	dest_driver drvh; 
//	dest_sequencer seqrh; 
	env_config env_cfg; 
	function new(string name = "dest_agent", uvm_component parent); 
		super.new(name, parent); 
	endfunction 

	function void build_phase(uvm_phase phase); 		
		super.build_phase(phase); 
		assert(uvm_config_db #(env_config)::get(this, "", "env_config", env_cfg)); 
		
		monh = dest_monitor::type_id::create("monh", this);
		if(env_cfg.dest_is_active == UVM_ACTIVE)
	 		begin 
			//	seqrh = dest_sequencer::type_id::create("seqrh", this); 
			//	drvh = dest_driver::type_id::create("drvh", this);
			end 
	endfunction 
endclass

