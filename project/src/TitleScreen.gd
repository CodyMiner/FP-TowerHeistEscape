extends Node

func _ready():
	$ThemeLoop.playing = true
	$Sprites/PlayerSprite/AnimationPlayer.play("anim")

func _on_Play_pressed():
	var _scene := get_tree().change_scene("res://src/World.tscn")
