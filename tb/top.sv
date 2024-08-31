module top; 
	import uvm_pkg::*; 
	`include "uvm_macros.svh"
	import switch_pkg::*; 
	bit clock; 
	always #10 clock = ~clock; 
	switch_if if0(clock); 

	switch DUV(clock, if0.rstn, if0.vld, if0.addr, if0.data_in, if0.addr_a, if0.data_a, if0.addr_b, if0.data_b); 

	initial 
		begin 
			`ifdef VCS
			$fsdbDumpvars(0, top); 
			`endif
			uvm_config_db #(virtual switch_if)::set(null, "*", "if0", if0); 
			uvm_top.enable_print_topology = 1; 
			run_test("test"); 
		end
endmodule 
