extends Node

func _ready():
	$Skeletons/Enemy/EnemyAnim.play("move")
	$Skeletons/Enemy2/EnemyAnim2.play("move")
	$Skeletons/Enemy3/EnemyAnim3.play("move")
	$Saws/Saw/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw2/Sprite/AnimationPlayer.play("rotate")
	$Saws/Saw3/Sprite/AnimationPlayer.play("rotate")

func _on_Enemy_body_shape_entered(body_id, body, body_shape, area_shape):
	$Player._damage(10)

func _on_Saw_body_entered(body):
	$Player._damage(20)


func _on_Heart_body_entered(body):
	$Player._heal(25)
	$Hearts/Heart.queue_free()
