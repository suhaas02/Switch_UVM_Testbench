class src_trans extends uvm_sequence_item; 
	`uvm_object_utils_begin(src_trans)
		`uvm_field_int(addr, UVM_ALL_ON)
		`uvm_field_int(data_in, UVM_ALL_ON)
		`uvm_field_int(rstn, UVM_ALL_ON)
		`uvm_field_int(vld, UVM_ALL_ON)
	`uvm_object_utils_end		
	rand bit rstn; 
	rand bit vld; 
	rand bit [7:0] addr; 
	rand bit [15:0] data_in; 
	function new(string name = "src_trans"); 
		super.new(name); 
	endfunction 
	
	constraint range{vld dist {0:=1, 1:=1};
			rstn dist {0:=10, 1:=2};}

	
endclass
