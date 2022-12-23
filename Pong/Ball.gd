extends KinematicBody2D

var speed = 500
var velocity = Vector2.ZERO

func _ready():
	randomize()
	velocity.y = [-0.8,-0.8][randi() % 2]
	velocity.x = [-1,-1][randi() % 2]

func _physics_process(delta):
	var col_object = move_and_collide(velocity * speed * delta)
	if col_object:
		velocity = velocity.bounce(col_object.normal)
