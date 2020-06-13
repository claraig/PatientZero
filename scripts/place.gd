extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var visitantes = []
var texto: String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func formatarVisitantes():
	for dado in visitantes:
		texto += "Dia: " + str(dado.turno)+ "\nVisitantes: \n" + str(dado.pessoas)+ "\n"



func _on_botao_pressed() -> void:
	get_parent().get_parent().get_node("painelPC").set_text("Pesquisando...")
	get_parent().get_parent().get_node("Sons/clicar_lugar").play()
	yield(get_parent().get_parent().get_node("Sons/clicar_lugar"), "finished")
	texto = "Lugar: "+str(name)+"\n"
	formatarVisitantes()
	get_parent().get_parent().get_node("painelPC").set_text(texto)

