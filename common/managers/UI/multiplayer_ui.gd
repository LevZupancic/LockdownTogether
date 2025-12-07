extends Control

signal instantiate_player(pid: int)

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
	Connection_Manager.join_server()
	visible = false
