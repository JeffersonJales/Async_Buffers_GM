
/**
 * Function Description
 * @param {any*} _async_id Description
 * @param {any*} file Description
 * @param {any*} call Description
 * @param {any*} arg Description
 * @param {any*} auto_delete Description
 * @param {real} [buffer_offset]=0 Description
 * @param {Id.Buffer} [buff_id]=-1 Description
 */
function BufferAsyncDataClass(_async_id, file, call, arg, auto_delete, _offset = 0, buff_id = -1) constructor {
	buffer_id = buff_id;					/// The _buffer id

	async_request_id = _async_id;			/// The Async Request id / Return from GM Buffer Async Functions
	filepath = file;						/// The filepath it will read or save the _buffer
											
	callback = call;						/// After save / load the _buffer, call this function
	callback_arg = arg;						/// Arguments to be parsed to the callback
	delete_buffer = auto_delete;			/// Flag - Delete _buffer after the callback
	buffer_offset = _offset;

	async_event_status = false;				/// Flag - If the async event is sucesseful or not
	buffer_is_corrupted = false;			/// Flag - The _buffer is corrupted or not


	static set_async_event_status = function(status){
		async_event_status = status;
	} 
	
	static call_callback = function(){
		callback( new BufferAsyncCallbackDataClass(buffer_id, callback_arg, buffer_is_corrupted, async_event_status, filepath));
	}
	
	static execute = function(){
		call_callback();
		buffer_destroy();
	}
	
	static buffer_destroy = function(){
		if(delete_buffer) 
			buffer_delete(buffer_id);
	}
	
	static buffer_corrupted_check = function(){
		try{
			buffer_seek(buffer_id, buffer_seek_start, buffer_offset);
		}
		catch(err){
			buffer_is_corrupted = true;	
		}
	}
}