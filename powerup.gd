extends Area2D

@export var jump_multiplier: float = 1.5
@export var duration: float = 5.0

func _on_body_entered(body):
	if body.is_in_group("player"):
		body.apply_jump_boost(jump_multiplier, duration)
		queue_free()
