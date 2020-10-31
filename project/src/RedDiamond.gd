extends Area2D

signal gem_grabbed

func _on_RedDiamond_body_entered(body):
	emit_signal("gem_grabbed")
	queue_free()
