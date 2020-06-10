extends Node2D


func _ready() -> void:
	atualizaValorDificuldade()
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Button_pressed():
	get_node('audio').play()
	get_tree().change_scene("res://scenes/Menu.tscn")


func atualizaValorDificuldade():
	var dificuldade = get_node("/root/Configuracoes").dificuldade
	var labelValorDificuldade = get_node("valorDificuldade")
	if (dificuldade == 0):
		labelValorDificuldade.text = "Normal"
		labelValorDificuldade.add_color_override("font_color", Color(0.212, 0.608, 0.145))
	elif (dificuldade == 1):
		labelValorDificuldade.text = "Difícil"
		labelValorDificuldade.add_color_override("font_color", Color(0.835, 0.859, 0.212))
	else:
		labelValorDificuldade.text = "Muito Difícil"
		labelValorDificuldade.add_color_override("font_color", Color(0.776, 0, 0))




func _on_aumentaDificuldade_pressed():
	 get_node("/root/Configuracoes").adicionarDificuldade()
	 atualizaValorDificuldade()


func _on_diminuiDificuldade_pressed():
	 get_node("/root/Configuracoes").diminuirDificuldade()
	 atualizaValorDificuldade()
