extends Resource

class_name ClassePessoa


# Declare member variables here. Examples:
export (String) var nome = " "

export (bool) var ehPacienteZero = false
export (int) var maximoContatos

export (bool) var foiHospital = false

export (int) var imunidade = 10

export (bool) var isolado = false
export (bool) var doente = false
export (bool) var morreu = false
export (int) var turnoInfectado = null
export (Image) var avatar = null


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
