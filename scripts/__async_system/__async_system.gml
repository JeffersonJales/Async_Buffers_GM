/*
	This functions will help to handle async save and load buffers!
	First, put the obj_async_handler on the first room of your game.
	Now you can use the buffer_save_async_ext and buffer_load_async_ext for normal buffers
	or buffer_save_compress_async and buffer_load_compress_async for compressed buffers (For save files, use the compressed version!)
	
	When the async event finishes, it will call the callBacDone function, passing only a struct as argument.
	See __buffer_async_data to check the struct variables.
*/

global.__async_buffers_map = ds_map_create();
call_later(1, time_source_units_frames, function(){ instance_create_depth(0, 0, 0, __obj_async_buffer_handler) }, false)
