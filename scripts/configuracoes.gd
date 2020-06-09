extends Node


# Declare member variables here. Examples:
var dificuldade:int = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	dificuldade = 2
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func adicionaDificuldade():
	dificuldade+=1
	if(dificuldade > 2):
		dificuldade = 0;
