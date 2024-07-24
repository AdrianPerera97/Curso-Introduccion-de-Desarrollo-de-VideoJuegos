extends Area2D

export var proximo_nivel=""

var estar_activado = false

func _on_body_entered(body):
	if estar_activado:
		body.play_entrar_portal(global_position)
		yield(get_tree().create_timer(1.0),"timeout")
		cambiar_nivel()

func cambiar_nivel():
# warning-ignore:return_value_discarded
	get_tree().change_scene(proximo_nivel)

func play_animacion():
	estar_activado=true
	$AnimatedSprite.play("default")
	$AnimationPlayer.play("activado")
