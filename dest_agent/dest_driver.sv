class dest_driver extends uvm_driver #(dest_trans); 
	`uvm_component_utils(dest_driver)
	virtual switch_if.dest_drv_mp vif; 
	env_config env_cfg; 
	function new(string name = "dest_driver", uvm_component parent); 
		super.new(name, parent); 
	endfunction 

	function void build_phase(uvm_phase phase); 
		super.build_phase(phase); 
		assert(uvm_config_db #(env_config)::get(this, "", "env_config", env_cfg)); 
	endfunction 

	function void connect_phase(uvm_phase phase); 
		vif = env_cfg.vif; 
	endfunction 
endclass

