function buffer_save_async_compressed(_buffer, _filepath, _callback, _callback_arg = undefined, _delete_buffer = true, _offset = 0){
	buffer_seek(_buffer, buffer_seek_start, 0);
	
	var _size = buffer_get_size(_buffer)
	var _buffer_compress = buffer_compress(_buffer, _offset, _size);
	
	var _async_id = buffer_save_async(_buffer_compress, _filepath, _offset, _size);
	var _data = new BufferAsyncDataSaveCompressClass(_async_id, _filepath, _callback, _callback_arg, _delete_buffer, _offset, _buffer, _buffer_compress);
	
	global.__async_buffers_map[? _async_id] = _data;
	return _data;
}