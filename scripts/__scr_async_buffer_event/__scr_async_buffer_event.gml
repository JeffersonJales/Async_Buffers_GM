function __async_save_load_event(){
	gml_pragma("forceinline");
	
	/// Check Id 
	var _id = async_load[? "id"];
	if(_id == undefined) return;
	
	/// Check if async is using this system
	var _struct = global.__async_buffers_map[? _id];
	if(_struct == undefined) return;
	
	/// Run it
	_struct.set_async_event_status(async_load[? "status"]);
	_struct.buffer_corrupted_check();
	_struct.execute();
		
	ds_map_delete(global.__async_buffers_map, _id);
}