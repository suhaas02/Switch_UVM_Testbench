class dest_trans extends uvm_sequence_item; 
	`uvm_object_utils_begin(dest_trans)
		`uvm_field_int(addr_a, UVM_ALL_ON)
		`uvm_field_int(addr_b, UVM_ALL_ON)
		`uvm_field_int(data_a, UVM_ALL_ON)
		`uvm_field_int(data_a, UVM_ALL_ON)
	`uvm_object_utils_end				

	function new(string name = "dest_trans");
		super.new(name); 
	endfunction 

	logic [7:0] addr_a; 
	logic [7:0] addr_b; 
	logic [15:0] data_a; 
	logic [15:0] data_b; 
endclass
