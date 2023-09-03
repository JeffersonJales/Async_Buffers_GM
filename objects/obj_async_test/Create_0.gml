/// @desc Buffer Save Test
__buffer_callback = function(data){
	show_debug_message("SAVE COMPLETE" + string(data));	
}

__buffer_load_callback = function(data){
	show_debug_message("LOAD COMPLETE" + string(data));	
		
	var _str = buffer_read(data.buffer_id, buffer_string);
	show_debug_message("On file: " + _str);
}

var _str = "Save Normal";
var _str2 = "Save Comprimido";

var _buff_1 = buffer_create(1, buffer_grow, 1);
var _buff_2 = buffer_create(1, buffer_grow, 1);

buffer_write(_buff_1, buffer_string, _str);
buffer_write(_buff_2, buffer_string, _str2);
alarm[0] = 30;


/// Saving Data
buffer_save_async_ext(_buff_1, "Save_Normal.txt", __buffer_callback, "Save Async");
buffer_save_async_compressed(_buff_2, "Compressed.txt", __buffer_callback, "Save Async Compressed");
