class_name ConnectionManager
extends Node

var peer = ENetMultiplayerPeer.new()

func create_server() -> void:
	peer.create_server(42069)
	multiplayer.multiplayer_peer = peer
	
	print("HostedGame")
	
	multiplayer.peer_connected.connect(
		func(pid):
			print("Peer " + str(pid) + " has joined")
	)
	

func join_server() -> void:
	peer.create_client("localhost", 42069)
	multiplayer.multiplayer_peer = peer
