extends Node

onready var music = $ThemeLoop
onready var player = $Sprites/PlayerSprite/AnimationPlayer
onready var gem = $Sprites/Gems/AnimationPlayer
onready var heart = $Sprites/Heart/AnimationPlayer
onready var saw = $Sprites/Saw/AnimationPlayer

func _ready():
	music.playing = true
	player.play("anim")
	gem.play("hover")
	heart.play("hover")
	saw.play("rotate")

func _on_Play_pressed():
	var _scene := get_tree().change_scene("res://src/World.tscn")
