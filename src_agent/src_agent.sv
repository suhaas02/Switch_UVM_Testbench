class src_agent extends uvm_agent; 
	`uvm_component_utils(src_agent)
		
	src_monitor monh; 
	src_driver drvh; 
	src_sequencer seqrh; 
	env_config env_cfg; 
	function new(string name = "src_agent", uvm_component parent); 
		super.new(name, parent); 
	endfunction 

	function void build_phase(uvm_phase phase); 		
		super.build_phase(phase); 
		assert(uvm_config_db #(env_config)::get(this, "", "env_config", env_cfg)); 
		monh = src_monitor::type_id::create("monh", this); 
		if(env_cfg.src_is_active == UVM_ACTIVE)
			begin 
				seqrh = src_sequencer::type_id::create("seqrh", this); 
				drvh = src_driver::type_id::create("drvh", this);
			end 
	endfunction 

	function void connect_phase(uvm_phase phase); 
		drvh.seq_item_port.connect(seqrh.seq_item_export); 
	endfunction
endclass
