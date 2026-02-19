class_name my_calc_res
extends Resource

enum equation_types {
	ADD,
	SUBTRACT,
	DIVIDE,
	MULTPLY
}

@export var name : String
@export var equation : equation_types
@export var number_1 : float
@export var number_2 : float

func get_result() -> float:
	var r : float
	match equation:
		0:
			r = number_1 + number_2
		1:
			r = number_1 - number_2
		2:
			r = number_1 / number_2
		3:
			r = number_1 * number_2
	return r
