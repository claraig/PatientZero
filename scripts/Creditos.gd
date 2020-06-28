extends Node2D

func _on_bVoltar_pressed() -> void:
	get_node('audio').play()
	get_tree().change_scene("res://scenes/Menu.tscn")


func _on_Button_toggled(button_pressed: bool):
	if button_pressed:
		$caneta.play(0.1)
		$bic/bic2/AnimationPlayer.play('mov')
	else:
		$caneta.play()
		$bic/bic2/AnimationPlayer.play('mov (copy)')
