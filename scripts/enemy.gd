extends CharacterBody2D


@export var res : Enemy2DType
@onready var sprite_2d: Sprite2D = %Sprite2D


const x_min := 280.0
const x_max := 888.0
var direction := Vector2.LEFT

func _ready() -> void:
	sprite_2d.texture = res.texture
	sprite_2d.scale = Vector2(0.25,0.25)
	


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		

	if position.x <= x_min:
		direction = Vector2.RIGHT
	elif position.x >= x_max:
		direction = Vector2.LEFT
	velocity.x = direction.x * res.SPEED

	move_and_slide()
