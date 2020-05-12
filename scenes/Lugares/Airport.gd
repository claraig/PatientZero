extends Node2D


var visitantes = []
var texto: String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func formatarVisitantes():
	for dado in visitantes:
		texto += "Dia: "+ str(dado.turno)+ "\nVisitantes: " + str(dado.pessoas)+ "\n"


func _on_Button_button_down() -> void:
	visitantes.push_back({"dia":1, "pessoas":"bia, ze, marco"})
	texto = "Lugar: "+str(name)+"\n"
	formatarVisitantes()
	get_parent().get_parent().get_parent().get_node("painel").set_text(texto)
