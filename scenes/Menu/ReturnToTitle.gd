extends Node2D

var silence: bool



func _ready() -> void:
	atualizaValorDificuldade()
#	silence = get_node("/root/Configuracoes").temsom
	print(silence)
#	get_node('CheckButton').toggle_mode(silence)
#	get_node('CheckButton').pressed = silence


#	AUDIO

func _on_CheckButton_pressed():
	get_node("/root/Configuracoes").ajustarSom()
	AudioServer.set_bus_mute(0, get_node("/root/Configuracoes").temsom)
	silence = get_node('CheckButton').pressed
	print(silence)




#	DIFICULDADE

func atualizaValorDificuldade():
	var dificuldade = get_node("/root/Configuracoes").dificuldade
	var labelValorDificuldade = get_node("valorDificuldade")
	if (dificuldade == 0):
		labelValorDificuldade.text = "Normal"
		labelValorDificuldade.add_color_override("font_color", Color(0.212, 0.608, 0.145))
	elif (dificuldade == 1):
		labelValorDificuldade.text = "Difícil"
		labelValorDificuldade.add_color_override("font_color", Color(0.988, 0.590, 0.212))
	else:
		labelValorDificuldade.text = "Muito Difícil"
		labelValorDificuldade.add_color_override("font_color", Color(0.776, 0, 0))

func _on_aumentaDificuldade_pressed():
	get_node('audio').play()
	get_node("/root/Configuracoes").adicionarDificuldade()
	atualizaValorDificuldade()

func _on_diminuiDificuldade_pressed():
	get_node('audio').play()
	get_node("/root/Configuracoes").diminuirDificuldade()
	atualizaValorDificuldade()




# SAIR

func _on_Button_pressed():
	get_node('svoltar').play()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/Menu.tscn")
