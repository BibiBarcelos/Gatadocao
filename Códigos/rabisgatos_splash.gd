extends VideoStreamPlayer
var casa = preload("res://Cenas/casa.tscn")


func _on_timer_timeout():
	get_tree().change_scene_to_packed(casa)
	pass


func _on_pular_button_down():
	get_tree().change_scene_to_packed(casa)
