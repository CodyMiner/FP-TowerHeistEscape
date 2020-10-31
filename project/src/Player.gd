extends KinematicBody2D

const GRAVITY := 25
const JUMP := 625
const SPEED := 250

onready var ground_ray := get_node("Ray")

var velocity := Vector2.ZERO
 
func _process(delta):
	velocity.x = 0
	if Input.is_action_pressed("walk_right"):
		velocity.x += SPEED
	if Input.is_action_pressed("walk_left"):
		velocity.x -= SPEED
	velocity.y += GRAVITY
	if Input.is_action_just_pressed("jump") and ground_ray.is_colliding():
		velocity.y -= JUMP
	velocity = move_and_slide(velocity)
	_set_animation()
	
func _set_animation():
	if velocity.x == 0 and velocity.y == 0:
		$Sprite/AnimationPlayer.play("idle")
	if velocity.x < 0:
		$Sprite.flip_h = true
		$Sprite/AnimationPlayer.play("walk")
	if velocity.x > 0:
		$Sprite.flip_h = false
		$Sprite/AnimationPlayer.play("walk")
	if !(ground_ray.is_colliding()):
		$Sprite/AnimationPlayer.play("fall")
