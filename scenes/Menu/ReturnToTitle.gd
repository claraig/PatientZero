extends Control


#func _ready() -> void:
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Button_pressed():
	get_node('CenterContainer/VBoxContainer/Button/audio').play()
	get_tree().change_scene("res://scenes/Menu.tscn")
