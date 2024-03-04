extends Node

func _ready():
	get_node("MainMenu/MarginContainer/VBoxContainer/StartGame").connect("pressed", self, "on_start_game_pressed")
	get_node("MainMenu/MarginContainer/VBoxContainer/Exit").connect("pressed", self, "on_exit_pressed")
	
func on_start_game_pressed():
	get_node("MainMenu").queue_free()
	var game_scene = load("res://Scenes/MainScenes/GameScene.tscn").instance()
	add_child(game_scene)
	
func on_exit_pressed():
	get_tree().quit()
