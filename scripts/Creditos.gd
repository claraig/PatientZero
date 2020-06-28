extends Node2D

var podemexer:bool

func _ready() -> void:
	podemexer = false


func _on_bVoltar_pressed() -> void:
	get_node('audio').play()
	get_tree().change_scene("res://scenes/Menu.tscn")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if podemexer == true:
		if $TESTE.get_rotation() < 360*5:
#		if rotation_degrees < 360:
				# girando o jornal
#				rotation += 45 * delta
				$TESTE.set_rotation(45*delta)
		_reset()

func _reset():
	podemexer = false
	rotation_degrees = 0


func _on_TESTE_button_down() -> void:
	podemexer = true
	print ('lalalaallaalallaalla')
	pass # Replace with function body.



func _on_Button_toggled(button_pressed: bool):
#	$caneta.play()
	if button_pressed:
		$caneta.play(0.1)
		$bic/bic2/AnimationPlayer.play('mov')
	else:
		$caneta.play()
		$bic/bic2/AnimationPlayer.play('mov (copy)')
