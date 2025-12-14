class_name MainMenu
extends Control


## Buttons
func _on_host_button_pressed() -> void:
	pass # Replace with function body.


func _on_join_button_pressed() -> void:
	pass # Replace with function body.


func _on_settings_button_pressed() -> void:
	pass # Replace with function body.


func _on_quit_button_pressed() -> void:
	Signal_Manager.emit_quit_game()
