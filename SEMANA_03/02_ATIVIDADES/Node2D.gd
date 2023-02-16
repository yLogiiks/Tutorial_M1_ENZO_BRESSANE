extends Node2D

var dado1
var dado2
var dado3
var texto
var numeros

func _on_Button1_pressed():
	numeros = float($NUMEROS.text)
	
	$ColorRect/saida = (numeros)
