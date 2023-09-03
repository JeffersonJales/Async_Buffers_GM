function buffer_load_async_compressed(_filepath, _callback, _callback_arg = undefined, _delete_buffer = true,_offset = 0){
	var _buffer = buffer_create(1, buffer_grow, 1);
	
	var _id = buffer_load_async(_buffer, _filepath, _offset, -1);
	var _data = new BufferAsyncDataLoadCompressClass(_id, _filepath, _callback, _callback_arg, _delete_buffer, _offset, _buffer);
	
	global.__async_buffers_map[? _id] = _data;
	return _data;
}