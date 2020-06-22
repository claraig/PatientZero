extends Node2D


var visitantes = []
var texto: String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func formatarVisitantes():
	for dado in visitantes:
		texto += "Turno: "+ str(dado.turno)+ "\nVisitantes: " + str(dado.pessoas)+ "\n"


func _on_Button_button_down() -> void:
	visitantes.push_back({"turno":1, "pessoas":"cal, maria, joaquim"})
	texto = "Lugar: "+str(name)+"\n"
	formatarVisitantes()
	get_parent().get_parent().get_parent().get_node("painel").set_text(texto)
