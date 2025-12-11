class_name PlusOneButton
extends Button

static var score: int

func _on_pressed() -> void:
	score += 1
	queue_free()
