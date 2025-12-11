class_name Character
extends Node

enum Name {
	APOLLO,
	PHOENIX,
	TRUCY
}

const CHARACTER_DETAILS : Dictionary = {
	Name.APOLLO: {
		"name": "Apollo",
		"gender": "male",
		"sprite_frames": null
	},
	Name.PHOENIX: {
		"name": "Phoenix",
		"gender": "male",
		"sprite_frames": preload("res://resources/phoenix.tres")
	},
	Name.TRUCY: {
		"name": "Trucy",
		"gender": "female",
		"sprite_frames": preload("res://resources/trucy.tres")
	},
}

static func get_enum_from_string(string_value: String) -> int:
	var upper_string = string_value.to_upper()
	if Name.has(upper_string):
		return Name[upper_string]
	else:
		push_error("Invalid character name: " + string_value)
		return -1
