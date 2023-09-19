extends Node2D
#Carregamentos prévios
var rua = preload("res://Cenas/rua.tscn")
@onready var menu = $Camera2D/Menu

#Itens



#Funções de processamento
func _process(delta):
	if Input.is_action_just_pressed("pausar"):
		get_tree().paused = true
		menu.show()

#Ações


#Botões
func _on_porta_button_down():
	get_tree().change_scene_to_packed(rua)
	pass

func _on_plantinha_button_down():
	VariaveisGlobais.regada = true
	print("Planta regada")
	await get_tree().create_timer(360.0, false).timeout
	print("Planta seca")
	VariaveisGlobais.regada = false
	pass

func _on_janela_sala_button_down():
	if VariaveisGlobais.janAberta == false:
		VariaveisGlobais.janAberta = true
	else:
		VariaveisGlobais.janAberta = false
	pass
