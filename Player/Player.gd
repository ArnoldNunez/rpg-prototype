extends KinematicBody2D

# The acceleration of the player
export var ACCELERATION = 500

# How fast the player will move (pixels/sec)
export var MAX_SPEED = 400

# The collision friction of the player
export var FRICTION = 500

var velocity = Vector2.ZERO

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("MoveRight") - Input.get_action_strength("MoveLeft")
	input_vector.y = Input.get_action_strength("MoveDown") - Input.get_action_strength("MoveUp")
	
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		
	if velocity.length() > 0:
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
		
	# Change sprite animation based on velocity/movement
	if velocity.x > 0:
		$AnimatedSprite.animation = "move_right"
	elif velocity.x < 0:
		$AnimatedSprite.animation = "move_left"
	elif velocity.y > 0:
		$AnimatedSprite.animation = "move_down"
	elif velocity.y < 0:
		$AnimatedSprite.animation = "move_up"
		
		
	move_and_slide(velocity)
			
