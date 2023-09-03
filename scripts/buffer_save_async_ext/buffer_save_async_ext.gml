function buffer_save_async_ext(_buffer, _filepath, _callback, _callback_arg = undefined, _delete_buffer = true, _offset = 0){
	var _async_id = buffer_save_async(_buffer , _filepath, _offset, buffer_get_size(_buffer));
	var _data = new BufferAsyncDataClass(_async_id, _filepath,_callback, _callback_arg, _delete_buffer, _offset, _buffer);

	global.__async_buffers_map[? _async_id] = _data;
	return _data;
}