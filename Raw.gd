extends HTTPRequest

var request_id := 0

func _ready():
	.set_download_chunk_size(16777216)

func close():
	.cancel_request()

func default_headers():
	return [
		"user-agent: some useragent",
	]

func network_error(error, message, url = null):
	return {
		"url": url,
		"type": error,
		"message": message,
		"error": error,
	}

func fetch(url: String, headers = default_headers(), data = null, type = null, id = null):
	yield(get_tree(), "idle_frame")

	# We'll track our response ID to prevent race conditions
	if id == null:
		self.request_id += 1
		id = self.request_id

	# Make sure we can perform this request
	close()

	var error
	if data:
		var query = JSON.print(data)
		if not type:
			type = HTTPClient.METHOD_POST

		error = self.request(url, headers, true, type, query)

	else:
		error = self.request(url, headers, true)

	if error:
		close()
		return network_error(error, "when making request", url)

	var result = yield(self, "request_completed")

	error = result[0]
	if error:
		close()
		return network_error(error, "when waiting for request completion", url)

	if self.request_id != id:
		print("Http: Request was superceded")
		return null

	return result[3].get_string_from_utf8()
