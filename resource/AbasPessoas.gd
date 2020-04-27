extends Node2D

onready var nome = get_parent().get_node('ficha/Nome')
onready var foiHospital = get_parent().get_node('ficha/FoiHospital')
onready var imunidade = get_parent().get_node('ficha/Node2D/imunidade')

#onready var foiHospital = get_node('ficha/foiHospital')
#
#onready var avatar = get_node('ficha/Node2D/avatar')
#
#onready var imunidade = get_node('ficha/Node2D/imunidade')
#onready var turnoAdoeceu = get_node('ficha/Node2D/turnoInfectado')



func _ready() -> void:
	var class_data = load ("res://resource/pessoa1.tres")

	nome.text = class_data.nome

	foiHospital.text = str(class_data.foiHospital)

#	imunidade.text = str(class_data.imunidade)

#	atualizar_ficha(class_data)
#
#
#func atualizar_ficha(class_data):
#	nome.text = class_data.nome
#
#	foiHospital.text = str(class_data.foiHospital)
#
#	imunidade.text = str(class_data.imunidade)

#	turnoAdoeceu.text = str(class_data.turnoInfectado)
#	nome.text = class_data.nome

#	avatar.texture = class_data.avatar

#
#func _on_Button_pressed():
#	var class_data = load ("res://scripts/pessoa1.tres")
#	atualizar_ficha(class_data)
#
#func _on_Button2_pressed() -> void:
#	var class_data = load ("res://scripts/pessoa2.tres")
#	atualizar_ficha(class_data)
