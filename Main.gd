extends Node2D

var request

func _ready():
	request = preload("Raw.gd").new()
	self.add_child(request)
	
	$CanvasLayer/CenterContainer/Label.text = "LOADING..."
	
	var result = request.fetch("https://api.kraken.com/0/public/OHLC?pair=BTCUSDT")
	result = yield(result, "completed")
	
	if typeof(result) == TYPE_DICTIONARY:
		$CanvasLayer/CenterContainer/Label.text = result.error

	else:
		$CanvasLayer/CenterContainer/Label.text = "COMPLETE"
