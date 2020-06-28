extends Node2D

var silence:bool

func _ready() -> void:
	get_node("CheckButton").connect("pressed", self, "_on_CheckButton_toggled")
	atualizaValorDificuldade()
	atualizaToggleSom()
	atualizaToggleMusica()

#	AUDIO

func atualizaToggleSom():
	silence = get_node("/root/Configuracoes").temsom
	$CheckButton.pressed = silence

func atualizaToggleMusica():
	silence = get_node("/root/Configuracoes").musicaAtiva
	$CheckButtonMusica.pressed = silence

func _on_CheckButton_toggled():
	get_node("/root/Configuracoes").ajustarSom()
	atualizaToggleSom()
#	print(silence)

func _on_CheckButtonMusica_toggled():
	get_node("/root/Configuracoes").ajustarMusica()
	atualizaToggleMusica()

func _on_CheckButtonMusica_pressed():
	get_node("/root/Configuracoes").ajustarMusica()
	atualizaToggleMusica()



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

func _on_b_back_pressed():
	get_node('svoltar').play()
	get_tree().change_scene("res://scenes/Menu.tscn")
