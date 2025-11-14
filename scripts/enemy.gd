extends Control


@export var enemy_name: String = "SLIMY MONSTER"
@export var max_health: int = 20
var current_health: int


@onready var name_label = $NameLabel
@onready var health_label = $HealthLabel
