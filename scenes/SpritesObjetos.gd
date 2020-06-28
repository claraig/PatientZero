extends Node2D

#-------------------------- ANIMAÇÕES ----------------------------#

func _on_caneca_pressed():
	get_parent().get_node('Sons/caneca').play()
	$caneca/AnimationPlayer.play('moving')

func _on_lanterna_toggled(button_pressed: bool):
	get_parent().get_node('Sons/lanterna').play()
	if button_pressed:
		$Luminaria/lanterna/lanterna_luz.show()
	else:
		$Luminaria/lanterna/lanterna_luz.hide()

func _on_bcaneta_pressed():
	get_parent().get_node('Sons/caneta').play()
	$Mesa/caneta/caneta.play('mov')

func _on_livros_pressed():
	$Mesa/livros/AnimationPlayer.play('mov')
	get_parent().get_node('Sons/livros').play(1.0)

func _on_pastinha_pressed():
	$pastinha/papeis/AnimationPlayer.play('mov')
	get_parent().get_node('Sons/papel').play(1.0)

func _on_vaso_pressed():
	$vaso/planta/AnimationPlayer.play('mov')
	get_parent().get_node('Sons/planta').play()

