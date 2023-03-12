extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var thrust = Vector2(-250, -250)
var torque = 20000

func _integrate_forces(state):
	if Input.is_action_pressed("jump"):
		apply_force(thrust.rotated(rotation))
	else:
		apply_force(Vector2())
	var rotation_dir = 0
	
