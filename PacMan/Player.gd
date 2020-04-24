extends KinematicBody2D
var velx
var vely
var velocidade = Vector2(velx, vely)


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	velocidade = Vector2(velx, vely)

func _process(delta):
	pass
	
func _physic_process(delta):
	var collide = move_and_collide(velocidade)
	if collide:
		velx= 0
		vely= 0
		velocidade = Vector2(velx, vely)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
