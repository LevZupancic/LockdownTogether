extends Node

const PLAYER: PackedScene = preload("res://Entities/Player/player.tscn")
@onready var ui: Control = %UI

func _ready() -> void:
	Scene_Manager.ui = ui
	Signal_Manager.emit_change_ui_scene(Common_Type.scene_dict["Main menu"])

func add_player(pid: int) -> void:
	var player = PLAYER.instantiate()
	player.name = str(pid)
	player.position = Vector3(0,3,0)
	add_child(player)
