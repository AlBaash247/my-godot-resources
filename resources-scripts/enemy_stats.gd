@tool
class_name EnemyStats
extends Resource

@export var tag : String :  set = set_tag, get = get_tag
@export var health : int : set = set_health, get = get_health
@export var attack_damage : int : set = set_attack_damage, get = get_attack_damage
@export var defense : int : set =  set_defense, get = get_defense
@export var speed : int : set = set_speed , get = get_speed


const SIGNALS_KEYS :={
	ENEMY_DEATH = "ENEMY_DEATH",
	ENEMY_HEALTH_CHANGED = "ENEMY_HEALTH_CHANGED"
}

signal ENEMY_DEATH
signal ENEMY_HEALTH_CHANGED


func emit_with_key(selected_signal_string : String , key : String, val : int) -> void:
	#print("to emit: ", selected_signal_string, " " ,val)
	emit_signal(selected_signal_string,  val)


func set_tag(val : String) -> void:
	tag = val

func get_tag() -> String:
	return tag

func set_health(val : int) -> void:
	health = val
	emit_with_key(SIGNALS_KEYS.ENEMY_HEALTH_CHANGED, tag, health)
	if health <= 0:
		emit_signal(SIGNALS_KEYS.ENEMY_DEATH, tag)

func get_health() -> int:
	return health

func set_attack_damage(val : int) -> void:
	attack_damage = val	

func get_attack_damage() -> int:
	return attack_damage

func set_defense(val : int) -> void:
	defense = val

func get_defense() -> int:
	return defense

func set_speed(val : int) -> void:
	speed = val

func get_speed() -> int:
	return speed

func take_damage(val : int) -> void:
	var damage =  val - defense
	set_health(damage)
