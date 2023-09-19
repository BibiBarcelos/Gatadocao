extends VideoStreamPlayer
var casa = preload("res://Cenas/casinha.tscn")


func _ready():
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_packed(casa)

func _on_pular_button_down():
	get_tree().change_scene_to_packed(casa)
