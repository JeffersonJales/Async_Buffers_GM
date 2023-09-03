function BufferAsyncCallbackDataClass(_buff, _extra_arg, _corrupted, _event_status, _file) constructor{
	buffer_id = _buff;
	callback_arg = _extra_arg;
	is_corrupted = _corrupted;
	async_event_status = _event_status;
	filepath = _file;
}