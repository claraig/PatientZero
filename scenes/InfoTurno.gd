extends Label

var corFundo = StyleBoxFlat.new()

#func _ready():
#	corFundo.set_bg_color(Color(0.5,0.8,0.5,1))
#	set("custom_styles/normal", corFundo)
#
func _corVenceu():
	corFundo.set_bg_color(Color(0.5,0.8,0.5,1))
	set("custom_styles/normal", corFundo)

func _corPerdeu():
	corFundo.set_bg_color(Color(0.8,0.5,0.5,1))
	set("custom_styles/normal", corFundo)
