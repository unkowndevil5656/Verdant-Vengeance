extends Control


@export var enemy_name: String = "SLIMY MONSTER"
@export var max_health: int = 20
var current_health: int


@onready var name_label = $NameLabel
@onready var health_label = $HealthLabel


func _ready():
	current_health = max_health
	name_label.text = enemy_name
	update_health_display()
	
	
func take_damage(amount: int):
	current_health -= amount
	update_health_display()
	if current_health <= 0:
		die()
	
func update_health_display():
	health_label.text = "HP:" + str(current_health)
	
func die():
	queue_free()
	print(enemy_name + "defeated!!")
