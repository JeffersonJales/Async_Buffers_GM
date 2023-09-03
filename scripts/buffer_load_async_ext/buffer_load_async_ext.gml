function buffer_load_async_ext(_filpath, _callback, _callback_arg = undefined, _delete_buffer = true,  _offset = 0){
	var _buffer_id = buffer_create(1, buffer_grow, 1);
	
	var _async_id = buffer_load_async(_buffer_id, _filpath, _offset, -1);
	var _data = new BufferAsyncDataClass(_async_id, _filpath, _callback, _callback_arg, _delete_buffer, _offset, _buffer_id);

	global.__async_buffers_map[? _async_id] = _data;
	return _data;
}