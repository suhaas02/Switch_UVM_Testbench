interface switch_if(input bit clock); 
	bit rstn; 
	bit vld; 
	bit [7:0] addr; 
	bit [15:0] data_in; 
	bit [7:0] addr_a; 
	bit [15:0] data_a; 
	bit [7:0] addr_b; 
	bit [15:0] data_b; 

	clocking src_drv_cb@(posedge clock);
		default input #2 output #2;  
		output rstn; 
		output vld, addr, data_in; 
	endclocking 

	clocking src_mon_cb@(posedge clock); 
		default input #2 output #2; 
		input rstn, vld, addr, data_in; 
	endclocking 
	
	clocking dest_mon_cb@(posedge clock); 
		default input #2 output #2; 
		input rstn, vld, addr, data_in, addr_a, data_a, addr_b, data_b; 
	endclocking 

	modport src_drv_mp(clocking src_drv_cb); 
	modport src_mon_mp(clocking src_mon_cb);
	modport dest_mon_mp(clocking dest_mon_cb); 
endinterface 

	
