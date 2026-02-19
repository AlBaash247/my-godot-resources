extends Node2D

@export var res : my_calc_res

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(res.name, " : ", res.get_result())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
