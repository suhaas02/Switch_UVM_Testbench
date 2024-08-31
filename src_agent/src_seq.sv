class src_seq extends uvm_sequence #(src_trans); 
	`uvm_object_utils(src_seq)
	
	function new(string name = "src_seq"); 
		super.new(name); 
	endfunction 

	task body(); 
		repeat(10)
			begin 
				req = src_trans::type_id::create("req"); 
				start_item(req); 
				assert(req.randomize() with {addr < 100;}); 
				finish_item(req); 
			end
	endtask 
endclass; 
