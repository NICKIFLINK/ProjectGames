extends CharacterBody2D

const SPEED = 200

func _physics_process(float):
	velocity = Vector2()
	if Input.is_action_pressed("RIGHT"):
		velocity.x += SPEED
		$Sprite.flip_h = false
	if Input.is_action_pressed("LEFT"):
		velocity.x -= SPEED
		$Sprite.flip_h = true
	if Input.is_action_pressed("DOWN"):
		velocity.y += SPEED
	if Input.is_action_pressed("UP"):
		velocity.y -= SPEED
	velocity = velocity.normalized() * SPEED
	move_and_slide()
