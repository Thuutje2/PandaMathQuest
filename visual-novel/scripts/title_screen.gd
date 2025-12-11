extends Node2D

@onready var new_game_button: Button = %NewGameButton
@onready var quit_button: Button = %QuitButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_game_button.pressed.connect(_on_new_game_button_pressed)
	quit_button.pressed.connect(_on_quit_button_pressed)
	Scenemanager.transition_out_completed.connect(_on_transition_out_completed, CONNECT_ONE_SHOT)

func _on_new_game_button_pressed():
	Scenemanager.transition_out()

func _on_transition_out_completed():
	Scenemanager.change_scene("res://scenes/main_scene.tscn")

func _on_quit_button_pressed():
	get_tree().quit()
