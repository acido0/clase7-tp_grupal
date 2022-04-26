extends KinematicBody2D

var velocity = Vector2(0,0)
var gravity = 25

func _physics_process(delta):
	velocity.y += gravity
	if Input.is_action_pressed("ui_right"):
		velocity.x += 40
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 40
	
	if Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
		velocity.x = 0
	
	
	
	
	
	
	
	
	move_and_slide(velocity)
	
	
	
	
	pass
	
