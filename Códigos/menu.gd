extends Control
@onready var jogo = $"../../"
	#Com esses pontos, consigo pegar duas referências acima, ao invés de usar duas variáveis, uma p/ rua e outra p/ casa.

func _on_sair_button_down():
	get_tree().quit()

func _on_voltar_button_down():
	jogo.menuPausa()

