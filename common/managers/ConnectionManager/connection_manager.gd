class_name ConnectionManager
extends Node

const SERVER_PORT: int = 42069

func create_server() -> void:
	var peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
	peer.create_server(SERVER_PORT)
	multiplayer.multiplayer_peer = peer
	print("Server created")
	
	multiplayer.peer_connected.connect(
		func(pid):
			print("Peer " + str(pid) + " has joined")
	)

func create_client(host_ip: String = "localhost", host_port: int = SERVER_PORT) -> void:
	_init_client_connection_signals()
	
	var peer = ENetMultiplayerPeer.new()
	peer.create_client(host_ip, host_port)
	multiplayer.multiplayer_peer = peer
	print("Client peer created")

func _init_client_connection_signals() -> void:
	if not multiplayer.server_disconnected.is_connected(_on_server_disconnected):
		multiplayer.server_disconnected.connect(_on_server_disconnected)
	
func _on_server_disconnected() -> void:
	print("Server disconnected")
	Signal_Manager.emit_game_state_changed(CommonType.GameState.MAIN_MENU)
	multiplayer.multiplayer_peer = null
	
