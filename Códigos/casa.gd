extends Node2D
var rua = preload("res://Cenas/rua.tscn")
var pausado = false
@onready var menu = $Camera2D/Menu


#Funções de processamento
func _process(delta):
	if Input.is_action_just_pressed("pausar"):
		menuPausa()



#Ações
func menuPausa():
	if pausado:
		menu.hide()
		Engine.time_scale = 1
	else:
		menu.show()
		Engine.time_scale = 0
	pausado = !pausado

#Botões
func _on_porta_button_down():
	get_tree().change_scene_to_packed(rua)
	pass
