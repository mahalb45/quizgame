extends Control



var game = preload ("res://quiz_scene.tscn")
var game2 = preload ("res://hishscores.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://quiz_scene.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://hishscores.tscn")
