class test extends uvm_test; 
	`uvm_component_utils(test)
	virtual switch_if vif; 
	env_config env_cfg; 
//	src_cfg s_cfg; 
//	dest_cfg d_cfg; 
	environment envh;
	src_seq sseqh;  
	function new(string name = "test", uvm_component parent); 
		super.new(name, parent); 
	endfunction 

	function void build_phase(uvm_phase phase); 
		super.build_phase(phase); 
		env_cfg = env_config::type_id::create("env_cfg"); 
		assert(uvm_config_db #(virtual switch_if)::get(this, "", "if0", env_cfg.vif)); 
		uvm_config_db #(env_config)::set(this, "*", "env_config", env_cfg); 
		envh = environment::type_id::create("envh", this); 
		sseqh = src_seq::type_id::create("sseqh"); 		
	endfunction 
	
	task run_phase(uvm_phase phase); 
		phase.raise_objection(this); 
		sseqh.start(envh.sagth.seqrh); 
		phase.drop_objection(this); 
	endtask 
	
endclass
