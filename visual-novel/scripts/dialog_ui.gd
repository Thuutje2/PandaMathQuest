extends Control

signal text_animation_done
signal choice_selected

const choice_button_scene = preload("res://scenes/player_choice.tscn")

@onready var dialog_line = %DialogLine
@onready var speaker_name = %SpeakerName
@onready var choice_list = %ChoiceList
@onready var text_blip_sound = %TextBlipSound
@onready var text_blip_timer = %TextBlipTimer
@onready var sentence_pause_timer = %SentencePauseTimer

const ANIMATION_SPEED : int = 30
const NO_SOUND_CHARS : Array = [".", "!", "?"]

var animatie_text : bool = false
var current_visible_characters : int = 0
var current_character_details : Dictionary

func _ready() -> void:
	choice_list.hide()
	text_blip_timer.timeout.connect(on_text_blip_timeout)
	sentence_pause_timer.timeout.connect(on_sentence_pause_timeout)

func _process(delta):
	if not animatie_text or not sentence_pause_timer.is_stopped():
		return

	if dialog_line.visible_ratio < 1:
		animate_line(delta)
	else:
		finish_animation()

func animate_line(delta):
	dialog_line.visible_ratio += (1.0/dialog_line.text.length() * (ANIMATION_SPEED * delta))
	handle_character_logic()

func handle_character_logic():
	if not (dialog_line.visible_characters > current_visible_characters):
		return
		
	current_visible_characters = dialog_line.visible_characters
	var current_char = dialog_line.text[current_visible_characters - 1]

	if not (current_visible_characters < dialog_line.text.length()):
		return
		
	var next_char = dialog_line.text[current_visible_characters]
	
	if NO_SOUND_CHARS.has(current_char) and next_char == " ":
		text_blip_timer.stop()
		sentence_pause_timer.start()

func finish_animation():
	text_blip_sound.stop()
	animatie_text = false
	text_animation_done.emit()
	
func change_line(character_name: Character.Name, line: String):
	current_character_details = Character.CHARACTER_DETAILS[character_name]
	speaker_name.text = current_character_details["name"]
	current_visible_characters = 0
	dialog_line.visible_characters = 0
	dialog_line.text = line
	animatie_text = true

func display_choices(choices: Array):
	for child in choice_list.get_children():
		child.queue_free()

	for choice in choices:
		var choice_button = choice_button_scene.instantiate()
		choice_button.text = choice["text"]
		choice_button.pressed.connect(_on_choice_button_pressed.bind(choice["goto"]))
		choice_list.add_child(choice_button)
	choice_list.show()
	
func skip_text_animation():
	dialog_line.visible_ratio = 1
	
func on_text_blip_timeout():
	text_blip_sound.play_sound(current_character_details)
	
func on_sentence_pause_timeout():
	#text_blip_timer.start()
	pass
	
func _on_choice_button_pressed(anchor: String):
	choice_selected.emit(anchor)
	choice_list.hide()
	
