extends Node2D

var _scale = Vector2(0, 0)
var podegirar:bool


func _ready():
	podegirar = false

func _reset():
	podegirar = false
	_scale = Vector2(0, 0)
	rotation_degrees = 0

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

func _on_NextTurn_button_down():
	podegirar = true

func _on_bJornal_button_up() -> void:
	$canvas_jornal/jornal.hide()
	$canvas_jornal/bJornal.hide()
	get_node("canvas_jornal/jornal")._reset()
