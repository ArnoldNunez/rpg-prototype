extends Sprite

# Speed in pixels per second
var speed = 400

# angular speed in rad/s
var angular_speed = PI



# Constructor
func _init():
	print("Hello, world!")
	
# Called automatically by the engine when a node is fully instantiated
func _ready():
	var timer = get_node("Timer")
	timer.connect("timeout", self, "_on_Timer_timeout")
	
# Callback for processing physics computations
# delta: The time elapsed since the last frame
func _process(delta):
	# Manual movement
#	var direction = 0
#	if Input.is_action_pressed("ui_left"):
#		direction = -1
#	if Input.is_action_pressed("ui_right"):
#		direction = 1
#
#	rotation += angular_speed * direction * delta
#
#	# Velocity of the sprite
#	var velocity = Vector2.ZERO
#	if Input.is_action_pressed("ui_up"):
#		velocity = Vector2.UP.rotated(rotation) * speed
#
#	position += velocity * delta

	# Auto movement
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta


# Signal handler for the Button pressed event
func _on_Button_pressed():
	set_process(not is_processing())
	
func _on_Timer_timeout():
	visible = not visible
	
