extends Node2D

var request

func _ready():
	request = preload("Raw.gd").new()
	self.add_child(request)
	var result = request.fetch("https://api.kraken.com/0/public/OHLC?pair=BTCUSDT")
	result = yield(result, "completed")

	prints("GOT RESULT of length", len(result))
