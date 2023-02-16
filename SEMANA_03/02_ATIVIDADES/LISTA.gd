extends Node2D
	
func _on_Button_pressed():
	var textoDefinido = 'RECEBA'
	
	$ColorRect/saida.text = String(textoDefinido)
	
func _on_Button2_pressed():
	
	var dado1 = $dado1.text
	var dado2 = $dado2.text
	var array = [dado1,dado2]
	
	$ColorRect/saida.text = String(array)


func _on_Button3_pressed():
	
	var texto = $texto.text
	
	$ColorRect/saida.text = String(texto)
	
func _on_Button4_pressed():
	var numero = float($numero.text)
	
	$ColorRect/saida.text = String(numero)

