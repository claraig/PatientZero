extends Node

var dificuldade:int = 0
var temsom:bool
#var toggle:bool


func _ready():
	dificuldade = 0
	temsom = true
#	toggle = get_node("res://scenes/Menu/ReturnToTitle.gd").silence
#	print (toggle)
	AudioServer.set_bus_mute(0,!temsom)

func adicionarDificuldade():
	dificuldade+=1
	if(dificuldade > 2):
		dificuldade = 0

func diminuirDificuldade():
	dificuldade-=1
	if(dificuldade < 0):
		dificuldade = 2;

func ajustarSom():
	temsom = !temsom
	AudioServer.set_bus_mute(0,!temsom)
	print(temsom)
