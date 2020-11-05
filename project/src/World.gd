extends Node

onready var music = $ArcadeLoop

func _ready():
	music.playing = true
	_start_skeleton_anim()
	_start_saw_anim()

func _on_Enemy_body_shape_entered(body_id, body, body_shape, area_shape):
	$Player._damage(10)

func _on_Saw_body_entered(body):
	$Player._damage(20)

func _on_Heart_body_entered(body):
	$Player._heal(20)
	$Hearts/Heart.queue_free()

func _on_Heart2_body_entered(body):
	$Player._heal(25)
	$Hearts/Heart2.queue_free()

func _on_Heart3_body_entered(body):
	$Player._heal(25)
	$Hearts/Heart3.queue_free()

func _on_RedDiamond_body_entered(body):
	var _scene := get_tree().change_scene("res://src/WinScreen.tscn")

func _start_skeleton_anim():
	$Skeletons/Enemy/EnemyAnim.play("move")
	$Skeletons/Enemy2/EnemyAnim2.play("move")
	$Skeletons/Enemy3/EnemyAnim3.play("move")
	$Skeletons/Enemy4/EnemyAnim4.play("move")
	$Skeletons/Enemy5/EnemyAnim5.play("move")
	$Skeletons/Enemy6/EnemyAnim6.play("move")
	$Skeletons/Enemy7/EnemyAnim7.play("move")
	$Skeletons/Enemy8/EnemyAnim8.play("move")
	$Skeletons/Enemy9/EnemyAnim9.play("move")
	$Skeletons/Enemy10/EnemyAnim10.play("move")
	$Skeletons/Enemy11/EnemyAnim11.play("move")
	$Skeletons/Enemy12/EnemyAnim12.play("move")

func _start_saw_anim():
	$Saws/Saw/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw2/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw3/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw4/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw5/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw6/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw7/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw8/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw9/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw10/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw11/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw12/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw13/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw14/Sprite/AnimationPlayer.play("rotate")
