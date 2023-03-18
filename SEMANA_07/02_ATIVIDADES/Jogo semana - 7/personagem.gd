extends Sprite

var velocidade = 200
var mov = Vector2.ZERO

var projetil = preload("res://bala.tscn")

var recarregado = true 
var morto = false

func _ready():
	Global.jogador = self
	
func _enter_tree() -> void:
	Global.jogador = null
	
func _process(delta):
	mov.x =Input.get_action_strength("direita") - Input.get_action_strength("esquerda")
	mov.y = Input.get_action_strength("baixo") - Input.get_action_strength("cima")
	
	global_position.x = clamp(global_position.x, 24,1256)
	global_position.y = clamp(global_position.y, 24,696)
	
	if morto == false:
		global_position += velocidade * mov * delta

	if Input.is_action_pressed("atirar") and Global.criacao_no_pai != null and recarregado and morto == false:
		Global.instance_node(projetil, global_position, Global.criacao_no_pai)
		recarregado = false
		$tempo_recarga.start()


func _on_tempo_recarga_timeout():
	recarregado = true


func _on_Hitbox_area_entered(area):
	if area.is_in_group("inimigo"):
		visible = false
		morto = true
		yield(get_tree().create_timer(1), "timeout")
		get_tree().reload_current_scene()	
