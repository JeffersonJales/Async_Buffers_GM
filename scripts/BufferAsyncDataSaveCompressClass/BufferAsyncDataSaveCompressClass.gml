
function 
	BufferAsyncDataSaveCompressClass(_async_id, _filepath, _callback, _callback_arg, _delete_buffer, _offset, _buffer, _buffer_compressed) : 
	BufferAsyncDataClass(_async_id, _filepath, _callback, _callback_arg, _delete_buffer, _offset, _buffer) constructor {
	
	buffer_compressed_id = _buffer_compressed;

	// @override - Delete the load compressed _buffer on finish
	static buffer_destroy = function(){
		buffer_delete(buffer_compressed_id);
		if(delete_buffer)
			buffer_delete(buffer_id);
	}
}