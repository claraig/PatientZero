extends Node


# Declare member variables here. Examples:
var dificuldade:int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	dificuldade = 0
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func adicionarDificuldade():
	dificuldade+=1
	if(dificuldade > 2):
		dificuldade = 0
		
func diminuirDificuldade():
	dificuldade-=1
	if(dificuldade < 0):
		dificuldade = 2;
