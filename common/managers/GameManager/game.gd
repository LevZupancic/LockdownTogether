extends Node

const PLAYER: PackedScene = preload("res://Entities/Player/player.tscn")
@onready var multiplayer_ui: Control = %MultiplayerUi

func _ready() -> void:
	multiplayer_ui.instantiate_player.connect(add_player)

func add_player(pid: int) -> void:
	var player = PLAYER.instantiate()
	player.name = str(pid)
	player.position = Vector3(0,3,0)
	add_child(player)
