extends Node

var dificuldade:int = 0
var temsom:bool


func _ready():
	dificuldade = 0

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
#	if temsom:
#		print("mudou som")
