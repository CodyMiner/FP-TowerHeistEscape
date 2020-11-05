extends KinematicBody2D

signal healh_updated(health)
signal _killed()

const GRAVITY := 25
const JUMP := 650
const SPEED := 300

export (float) var max_health = 100
onready var ground_ray := get_node("Ray")
onready var health = max_health setget _set_health
onready var invulnerability_timer = $InvulnerabilityTimer
onready var animation = $Sprite/AnimationPlayer
onready var animation2 = $Sprite/AnimationPlayer2
onready var healthlbl = $Health
onready var hit = $Hit
onready var jump = $Jump

var velocity := Vector2.ZERO

func _process(delta):
	velocity.x = 0
	if Input.is_action_pressed("walk_right"):
		velocity.x += SPEED
	if Input.is_action_pressed("walk_left"):
		velocity.x -= SPEED
	velocity.y += GRAVITY
	if Input.is_action_just_pressed("jump") and ground_ray.is_colliding():
		jump.playing = true
		velocity.y -= JUMP
	velocity = move_and_slide(velocity)
	_set_animation()
	
func _set_animation():
	if velocity.x == 0:
		animation.play("idle")
	if velocity.x < 0:
		$Sprite.flip_h = true
		animation.play("walk")
	if velocity.x > 0:
		$Sprite.flip_h = false
		animation.play("walk")
	if !(ground_ray.is_colliding()):
		animation.play("fall")

func _damage_anim():
	animation2.play("damage")
	hit.playing = true

func _set_health(value):
	var prev_health = health
	health = clamp(value,0,max_health)
	if health != prev_health:
		emit_signal("healh_updated", health)
		if health == 0:
			_kill()
			emit_signal("_killed()")

func _damage(amount):
	if invulnerability_timer.is_stopped():
		invulnerability_timer.start()
		_damage_anim()
		_set_health(health-amount)
		healthlbl.text = String(health)

func _heal(amount):
	_set_health(health+amount)
	healthlbl.text = String(health)
	
func _kill():
	var _scene := get_tree().change_scene("res://src/DeathScreen.tscn")
