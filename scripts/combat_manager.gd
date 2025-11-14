extends Node

@onready var player_hand = $"../PlayerHand"
@onready var enemy_panel = $"../EnemyPanel"

var player_health = 20
var enemy_health = 20
var player_turn = true

func _ready():
	load_cards()

func load_cards():
	for i in range(3):
		var card = preload("res://scenes/card.tscn").instantiate()
		player_hand.add_child(card)

func apply_card_effect(damage):
	if player_turn:
		enemy_health -= damage
		print("Enemy HP:", enemy_health)
		if enemy_health <= 0:
			print("Enemy defeated 🤫🤫")
		end_turn()

func end_turn():
	player_turn = !player_turn
	if not player_turn:
		enemy_attack()

func enemy_attack():
	player_health -= 3
	print("Enemy Attacks! Player HP:", player_health)
	player_turn = true
