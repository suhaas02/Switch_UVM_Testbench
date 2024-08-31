class dest_monitor extends uvm_monitor; 
	`uvm_component_utils(dest_monitor)
	virtual switch_if.dest_mon_mp vif; 
	env_config env_cfg; 
	function new(string name = "dest_monitor", uvm_component parent); 
		super.new(name, parent); 
	endfunction 

	function void build_phase(uvm_phase phase); 
		super.build_phase(phase); 
		assert(uvm_config_db #(env_config)::get(this, "", "env_config", env_cfg)); 
	endfunction 

	function void connect_phase(uvm_phase phase); 
		vif = env_cfg.vif; 
	endfunction 

	task run_phase(uvm_phase phase); 		
		forever 
			collect_data();
	endtask 

	task collect_data(); 
		dest_trans xtn; 
		xtn = dest_trans::type_id::create("xtn");
		@(vif.dest_mon_cb); 
	//	@(vif.dest_mon_cb); 
		xtn.addr_a = vif.dest_mon_cb.addr_a; 
		xtn.addr_b = vif.dest_mon_cb.addr_b; 
		xtn.data_a = vif.dest_mon_cb.data_a; 
		xtn.data_b = vif.dest_mon_cb.data_b; 
		`uvm_info(get_type_name, $sformatf("Printing from dest monitor: %s", xtn.sprint()), UVM_LOW)
	//	$display("******************************"); 
	//	@(vif.dest_mon_cb);  
		
	endtask  
endclass


