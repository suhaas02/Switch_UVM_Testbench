class src_monitor extends uvm_monitor ; 
	`uvm_component_utils(src_monitor)
	virtual switch_if.src_mon_mp vif; 
	env_config env_cfg; 
	function new(string name = "src_monitor", uvm_component parent); 
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
		src_trans xtn; 
		xtn = src_trans::type_id::create("xtn"); 
		@(vif.src_mon_cb);
		xtn.rstn = vif.src_mon_cb.rstn; 
		xtn.vld = vif.src_mon_cb.vld; 
		xtn.addr = vif.src_mon_cb.addr; 
		xtn.data_in = vif.src_mon_cb.data_in;
		`uvm_info(get_type_name, $sformatf("Printing from source monitor: %s", xtn.sprint()), UVM_LOW)
	//	@(vif.src_mon_cb);  
		
	endtask  

endclass

