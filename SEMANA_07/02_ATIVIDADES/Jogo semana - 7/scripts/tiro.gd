extends Sprite

var mov = Vector2(1,0)
var velocidade = 500
var dir_unica = true

func _process(delta: float) -> void:
	if dir_unica:
		look_at(get_global_mouse_position())
		dir_unica = false
	global_position += mov.rotated(rotation) * velocidade * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
