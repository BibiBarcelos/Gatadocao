extends Camera2D
var velocidade = 7
var centro: Vector2
@onready var viewport := get_viewport()
@export var centroOff: Vector2
	#Centro onde a movimentação não funciona.

func _ready():
	self.position = get_viewport_rect().size/2
	centro = viewport.size / 2.0

func _process(delta):
	var mouse_position = viewport.get_mouse_position()
	var diff = mouse_position - centro
	
	if diff.x > 0:
		if diff.x > centroOff.x:
			moverCamera(Vector2(1, 0))
	elif diff.x < centroOff.x:
			moverCamera(Vector2(-1, 0))

func moverCamera(direction: Vector2):
	position += direction * velocidade
