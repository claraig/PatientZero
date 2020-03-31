extends Node


# Declare member variables here. Examples:
var imunidade:int
var nome:String = "Cal"
var isolada:bool = false
var doente:bool = false
var pacienteZero:bool = false
var maximo_contatos:int = 2
var pessoasContatadas = {"key":"value"}


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func _on_Button_button_down():
	get_parent().get_parent().get_node("painel").set_text(nome)

