
function 
	BufferAsyncDataLoadCompressClass(_async_id, _filepath, _callback, _callback_arg, _delete_buffer, _offset, _buffer) : 
	BufferAsyncDataSaveCompressClass(_async_id, _filepath, _callback, _callback_arg, _delete_buffer, _offset, _buffer, -1) constructor {
	
	// @override - Descompress the _buffer before passing it on the callback
	static execute = function(){
		buffer_compressed_id = buffer_id;
		buffer_id = buffer_decompress(buffer_id);
		call_callback();
		buffer_destroy();
	}
}
	

