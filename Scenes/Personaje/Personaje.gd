extends KinematicBody2D

var velocity = Vector2(0,0)
var contador_saltos = 0
const gravity = 25
const jump = -500
const xmove_limit = 250
const normal_floor = Vector2.UP

func _physics_process(delta):
	velocity.y += gravity
	if Input.is_action_pressed("ui_right") and velocity.x < xmove_limit: 
		velocity.x += 75
		
	
	if Input.is_action_pressed("ui_left") and velocity.x > -xmove_limit:
		velocity.x -= 75
	
	if Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
		velocity.x = 0
	
	if is_on_floor():
		contador_saltos = 0
		if Input.is_action_just_pressed("ui_up"):
			velocity.y = jump
			contador_saltos += 1
			
	else:
		if Input.is_action_just_pressed("ui_up") and contador_saltos == 1:
			velocity.y = jump
			contador_saltos += 1
			
	move_and_slide(velocity, normal_floor)
	
	
	
	
	pass
	
