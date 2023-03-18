extends Node2D

var inimigo_1 = preload("res://Inimigo.tscn")

func _ready():
	Global.criacao_no_pai = self
	Global.pontos = 0

func _exit_tree() -> void:
	Global.criacao_no_pai = null


func _on_timer_spwan_inimigo_timeout() -> void:
	var posicao_inimigo = Vector2(rand_range(-160, 1300),rand_range(-90,750))
	
	while posicao_inimigo.x < 1280  and posicao_inimigo.x > -80 and posicao_inimigo.y < 720 and posicao_inimigo.y > -45:
		posicao_inimigo = Vector2(rand_range(-160, 1300),rand_range(-90,750))
		
	Global.instance_node(inimigo_1, posicao_inimigo, self)

func _on_timer_dificuldade_timeout():
	if $timer_spwan_inimigo.wait_time > 0.50:
		$timer_spwan_inimigo.wait_time -= 0.10
