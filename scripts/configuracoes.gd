extends Node

var dificuldade:int = 0
var temsom:bool = true
var musicaAtiva:bool = true
#var toggle:bool


func _ready():
#	toggle = get_node("res://scenes/Menu/ReturnToTitle.gd").silence
#	print (toggle)
	AudioServer.set_bus_mute(0,!temsom)
	AudioServer.set_bus_mute(1,!musicaAtiva)

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
	print(musicaAtiva)
	AudioServer.set_bus_mute(0,!temsom)

func ajustarMusica():
	musicaAtiva = !musicaAtiva
	print(musicaAtiva)
	AudioServer.set_bus_mute(1,!musicaAtiva)
	
