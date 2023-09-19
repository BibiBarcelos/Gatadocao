extends Control
@onready var jogo = $"../../"
@onready var semBordas = $Tudo/Botoes/SemBordas
	#Com esses pontos, consigo pegar duas referências acima, ao invés de usar duas variáveis, uma p/ rua e outra p/ casa.

func _on_sair_button_down():
	get_tree().quit()

func _on_voltar_button_down():
	get_tree().paused = false
	self.hide()

func _on_sem_bordas_toggled(button_pressed):
	pass # Replace with function body.
