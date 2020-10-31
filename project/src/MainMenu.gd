extends Control

func _ready():
	$PlayerSprite/AnimationPlayer.play("anim")

func _on_Play_pressed():
	var _scene := get_tree().change_scene("res://src/World.tscn")

func _on_Controls_pressed():
	var _scene := get_tree().change_scene("res://src/Instructions.tscn")

func _on_Options_pressed():
	var _scene := get_tree().change_scene("res://src/Options.tscn")
