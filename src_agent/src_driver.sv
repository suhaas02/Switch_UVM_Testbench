class src_driver extends uvm_driver #(src_trans); 
	`uvm_component_utils(src_driver)
	virtual switch_if.src_drv_mp vif; 
	env_config env_cfg; 
//	src_trans sxtn; 
	function new(string name = "src_driver", uvm_component parent); 
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
			begin 
				seq_item_port.get_next_item(req); 
				send_to_dut(req); 		
				seq_item_port.item_done(); 
			end
	endtask 

	task send_to_dut(src_trans xtn);
	//	@(vif.src_drv_cb);
		vif.src_drv_cb.rstn <= xtn.rstn;
		vif.src_drv_cb.vld <= xtn.vld; 
		vif.src_drv_cb.addr <= xtn.addr; 
		vif.src_drv_cb.data_in <= xtn.data_in; 
		`uvm_info(get_type_name, $sformatf("Printing from source driver: %s", xtn.sprint()), UVM_LOW)
		@(vif.src_drv_cb);  
		
	endtask  
	
endclass
