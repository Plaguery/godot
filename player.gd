extends CharacterBody2D


const SPEED = 900.0
const BASE_JUMP = -1000.0
var JUMP_VELOCITY = -1000.0

func reset_pos():
	global_position = Vector2(0, 0)  
func apply_jump_boost(multiplier: float, duration: float):
	JUMP_VELOCITY = JUMP_VELOCITY * multiplier
	
	await get_tree().create_timer(duration).timeout
	JUMP_VELOCITY = BASE_JUMP
	
func _physics_process(delta: float) -> void:
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
