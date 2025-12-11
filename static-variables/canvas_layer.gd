extends CanvasLayer

func _process(_delta: float) -> void:
	$Label.text = str(PlusOneButton.score)
