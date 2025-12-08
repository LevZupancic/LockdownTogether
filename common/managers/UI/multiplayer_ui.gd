class_name MultiplayerUi
extends Control

signal instantiate_player(pid: int)

func _ready() -> void:
	Signal_Manager.game_state_changed.connect(_on_game_state_changed)

## Signal handlers
func _on_host_button_pressed() -> void:
	Connection_Manager.create_server()
	visible = false
	instantiate_player.emit(1)
	
	multiplayer.peer_connected.connect(
		func(pid):
			print("instantiating player: " + str(pid))
			instantiate_player.emit(pid)
	)

func _on_join_button_pressed() -> void:
	Connection_Manager.create_client()
	visible = false

func _on_game_state_changed(gameState: Common_Type.GameState) -> void:
	print("gameStateSet: " + str(gameState))
	if gameState == Common_Type.GameState.MAIN_MENU:
		visible = true
	else:
		visible = false
	
