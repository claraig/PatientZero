extends Node2D

func _ready():
	$pag1.show()
	$pag2.hide()
	$pag3.hide()
	$pag4.hide()

func _on_Button_pressed():
	get_node('audio').play()
	get_tree().change_scene("res://scenes/Menu.tscn")

func _on_pg1_pressed() -> void:
	$pag1.show()
	$pag2.hide()
	$pag3.hide()
	$pag4.hide()
	get_node('pag').play()

func _on_pg2_pressed() -> void:
	$pag1.hide()
	$pag2.show()
	$pag3.hide()
	$pag4.hide()
	get_node('pag').play()

func _on_pg3_pressed() -> void:
	$pag1.hide()
	$pag2.hide()
	$pag3.show()
	$pag4.hide()
	get_node('pag').play()


func _on_pg4_pressed() -> void:
	$pag1.hide()
	$pag2.hide()
	$pag3.hide()
	$pag4.show()
	get_node('pag').play()
