extends Node

func _on_Retry_pressed():
	var _scene := get_tree().change_scene("res://src/World.tscn")

func _on_Back_pressed():
	var _scene := get_tree().change_scene("res://src/TitleScreen.tscn")
