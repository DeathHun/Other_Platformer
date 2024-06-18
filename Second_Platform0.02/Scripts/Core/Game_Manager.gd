extends Node

signal gained_coins(int)

var coins : int = 0
var current_checkpoint : Checkpoint
var player : Player

func _ready():
	pass

func respawn_player():
	player.health = player.max_health
	if current_checkpoint != null:
		player.position = current_checkpoint.global_position

func gain_coin(coins_gained : int):
	coins += coins_gained
	emit_signal("gained_coins", coins_gained)

