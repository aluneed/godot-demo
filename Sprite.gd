extends Sprite2D

var speed = 400
var angular_speed = PI

func _process(delta):
    var direction = 0 
    if Input.is_action_pressed("left"):
        direction = -1
    if Input.is_action_pressed("right"):
        direction = 1
    if Input.is_action_pressed("down"):
        direction *= -1
    rotation += angular_speed * direction * delta
    
    var velocity = Vector2.ZERO
    if Input.is_action_pressed("up"):
        velocity = Vector2.UP.rotated(rotation) * speed
    if Input.is_action_pressed("down"):
        velocity = Vector2.DOWN.rotated(rotation) * speed
    position += velocity * delta


func _init():
    print("Hello, world!")


func _on_Button_pressed():
    set_process(!is_processing())


    
func _on_Timer_timeout():
    visible = not visible

func _ready():
    var timer = get_node("Timer")
    timer.connect("timeout", self._on_Timer_timeout, 0)
