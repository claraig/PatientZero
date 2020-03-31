extends Node


# Declare member variables here. Examples:
var imunidade:int
var isolada:bool = false
var morta:bool = false
var doente:bool = false
var pacienteZero:bool = false
var maximo_contatos:int = 2
var interacoes = []
var texto: String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func formatarInteracoes():
	for dado in interacoes:
		texto += "Turno "+ str(dado.turno)+ "\nLugares Visitados: " + str(dado.lugar)+ "\nPessoas que interagiu: " +str(dado.pessoas)+ "\n"

func _on_Button_button_down():
	if(doente):
		texto = "Nome: "+str(name)+"\n"
		formatarInteracoes()
		get_parent().get_parent().get_node("painel").set_text(texto)
	else : 
		get_parent().get_parent().get_node("painel").set_text("Essa pessoa ainda não foi ao hospital!")
