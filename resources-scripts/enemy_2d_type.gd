class_name Enemy2DType
extends Resource

enum enemy_types {
	RED,
	GREEN,
	BLUE
}

@export var name : String
@export var texture : Texture2D
@export var SPEED := 300.0
@export var type : enemy_types
@export var damage : float
@export var health : float
