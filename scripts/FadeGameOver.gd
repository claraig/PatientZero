extends Sprite

signal fade_finished

func fade_in():
	$AnimatedSprite.play('fadeIn')

func _on_AnimatedSprite_animation_finished(_anim_name):
	emit_signal('fade_finished')

