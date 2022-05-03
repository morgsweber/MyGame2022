extends Area2D

onready var tween := $Tween


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tween.interpolate_property(self, "scale", Vector2(1,1), 
	Vector2(1.5,1.5), 0.2) # duração 0,2 seg
	
	
	tween.interpolate_property(self, "scale", 
	Vector2(1.5,1.5), 
	Vector2(1,1), 0.2, 
	Tween.TRANS_LINEAR, #posso utilizar outras animações, ex.: elastic
	Tween.EASE_OUT,
	0.2) # delay: espera até começar
	
	tween.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_VisibilityNotifier2D_screen_exited() -> void:
	print("Saiu")
	queue_free()
