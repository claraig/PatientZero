extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var isolado:String = ""
var selecionado:String = ""


# Called when the node enters the scene tree for the first time.
func _ready():
	_inicializaPessoas()
	_inicializarPacienteZero()
	_printPessoas()
	
				
func _inicializaPessoas():
	var listaPessoas = get_children()
	for n in listaPessoas : 
		randomize()
		n.imunidade = rand_range(1,5)
		
func _inicializarPacienteZero():
	randomize()
	var listaPessoas = get_children()
	print(listaPessoas.size())
	var sorteado = rand_range(0, listaPessoas.size())
	listaPessoas[sorteado].pacienteZero = true


func _printPessoas():
	var listaPessoas = get_children()
	for n in listaPessoas : 
		print(n.name) 
		print("Imunidade")
		print(n.imunidade) 
		print("é paciente zero ?")
		print(n.pacienteZero)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_button_down():
	if(isolado == ""):
		for p in get_children():
			if(p.name == selecionado):
				p.get_node("Button").disabled = true
				isolado = selecionado
