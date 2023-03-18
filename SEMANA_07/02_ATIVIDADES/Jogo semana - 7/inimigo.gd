extends Sprite

var velocidade = 125
var mov = Vector2.ZERO

func _process(delta: float) -> void:
	if Global.jogador != null:
		mov = global_position.direction_to(Global.jogador.global_position)
		
	global_position += mov * velocidade * delta


func _on_hitbox_area_entered(area):
	print ("atingido")
