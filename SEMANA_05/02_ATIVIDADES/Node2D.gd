extends Node2D

var nome = ''
var teste = false
#a variavel valor não estava sendo usada
var numero = 0 #o número estava com acento
var lista = [] #não estava declarada como variavel

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #o número estava com acento
	nome = $LineEdit2.text  #inverter a lineEdit com o nome
	$Label2.text = String(nome)#adcionei um label para mostrar o nome colocado pelo usuario
	$Label.text = String(numero)#adicionei um label para mostar o numero colocado pelo usuario
func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #o numero estava com acento
		lista.append(numero) #o numero estava com a primeira letra maiscula
	$Label.text = String(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont #não tinha a variavel cont declarada 
	var i = 0#não tinha a variavel i declarada
	while(i < len(lista)):
		cont=0
		#i=0 foi mudado pq o i tem que ser antes do laço
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
		i = i + 1#foi adicionado com o objetivo de parar o loop
	$Label2.text = String(nome)#adicionei o label para mostar a nome + 'baldo'
	$Label.text = String(lista)#adicionei o label para mostar a lista
