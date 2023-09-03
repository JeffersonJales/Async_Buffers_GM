/// @desc Buffer Load Test
buffer_load_async_ext("Save_Normal.txt", __buffer_load_callback, "Load Async")
buffer_load_async_compressed("Compressed.txt", __buffer_load_callback, "Load Compressed Async");

