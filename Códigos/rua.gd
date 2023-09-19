extends Node2D
#Carregamentos prévios
var casa = preload("res://Cenas/casinha.tscn")
@onready var menu = $Camera2D/Menu


#Funções de processamento
func _process(delta):
	if Input.is_action_just_pressed("pausar"):
		get_tree().paused = true
		menu.show()


#Ações


#Botões
func _on_porta_button_down():
	get_tree().change_scene_to_packed(casa)


#Etc.
