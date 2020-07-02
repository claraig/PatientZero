extends Node2D

#____________________ OBJETOS ____________________

func _on_arq_button_down():
	get_parent().get_node('Sons/arq').play()
	$arq/gav/AnimationPlayer.play('mov')

func _on_cafeteira_toggled(button_pressed: bool):
	if button_pressed:
		$cafeteira/cafeteira2.show()
		get_parent().get_node('Sons/cafe').play()
	else:
		$cafeteira/cafeteira2.hide()
		get_parent().get_node('Sons/cafe').stop()

func _on_aluminaria_pressed():
	get_parent().get_node('Sons/bzz').play()
	$luminariaA/luminariaB/AnimationPlayer.play('mov')

func _on_telefone_pressed():
	get_parent().get_node('Sons/fone').play(1)
	$telefone/Sprite/AnimationPlayer.play('mov')

func _on_caneta_pressed():
	get_node('porta lapis/canetas/AnimationPlayer').play('mov')
	get_parent().get_node('Sons/canetas').play()

func _on_caixa_pressed():
	get_parent().get_node('Sons/caixa').play()
	$caixa/caixa2/AnimationPlayer.play('mov')
