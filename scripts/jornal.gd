extends Node2D

var _scale = Vector2(0, 0)
var podegirar:bool

func _ready():
	podegirar = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if podegirar == true:
		if rotation_degrees < 360*5:
			# escalando
			if _scale < Vector2(1, 1):
				_scale = _scale+Vector2(delta, delta)
				set_scale(_scale)
				# girando o jornal
				rotation += 45 * delta


func _on_NextTurn_button_down() -> void:
	podegirar = true

func _reset():
	podegirar = false
	_scale = Vector2(0, 0)
	rotation_degrees = 0
