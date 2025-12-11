extends Node2D

func _ready() -> void:
	pass 

func change_character(character_name : Character.Name, is_talking : bool, expression: String):
	var sprite_frames = Character.CHARACTER_DETAILS[character_name]["sprite_frames"]
	var stance = "talking" if is_talking else "idle"
	var animation_name = expression + "-" + stance if expression else stance
	if sprite_frames:
		$AnimatedSprite2D.sprite_frames = sprite_frames
		if $AnimatedSprite2D.sprite_frames.has_animation(animation_name):
			$AnimatedSprite2D.play(animation_name)
		else:
			$AnimatedSprite2D.play(stance)
	else:
		play_idle_animation()
			
func play_idle_animation():
	var last_animation = $AnimatedSprite2D.animation
	if last_animation and not last_animation.ends_with("-idle"):
		var idle_expression = last_animation.replace("talking", "idle")
		if $AnimatedSprite2D.sprite_frames.has_animation(idle_expression):
			$AnimatedSprite2D.play(idle_expression)
		else:
			$AnimatedSprite2D.play("idle")
