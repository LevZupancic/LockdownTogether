class_name SignalManager
extends Node

## Signals
signal game_state_changed(gameState: Common_Type.GameState)


## Emit functions
func emit_game_state_changed(gameState: Common_Type.GameState) -> void:
	game_state_changed.emit(gameState)
