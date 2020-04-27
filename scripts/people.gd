extends Node


# Declare member variables here. Examples:
var imunidade:int
var isolada:bool = false
var morta:bool = false
var doente:bool = false
var pacienteZero:bool = false
var maximo_contatos:int = 2
var turnoAdoecimento
var texto: String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func formatarInteracoes():
	texto += "Adoeceu Turno "+ str(turnoAdoecimento)+ "\n"

func _on_Button_button_down():
#	get_parent().get_parent().get_parent().get_node()
	texto = "Nome: "+str(name)+"\n"
	get_parent().get_parent().get_node("Population").selecionado = name
	if(doente):
		formatarInteracoes()
	else :
		texto += "Essa pessoa ainda não foi ao hospital!"
	get_parent().get_parent().get_node("painel").set_text(texto)
