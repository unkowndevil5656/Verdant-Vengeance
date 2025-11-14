extends Button

var damage = 5
@onready var manager = get_node("/root/Main/CombatManager")


func _ready():
	text = "Vine Lash (" + str(damage) + ")"
	
	
func _pressed():
	if manager.player_turn:
		manager.apply_card_effect(damage)
		queue_free() 
