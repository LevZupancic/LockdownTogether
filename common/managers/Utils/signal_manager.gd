class_name SignalManager
extends Node

## Common helpers
const SceneAction = Common_Type.SceneAction

## Signals
signal game_state_changed(gameState: Common_Type.GameState)
signal change_ui_scene(scene: String, action: SceneAction)
signal quit_game()




## Emit functions
func emit_game_state_changed(gameState: Common_Type.GameState) -> void:
	game_state_changed.emit(gameState)


func emit_change_ui_scene(scene: String, action: SceneAction = SceneAction.DELETE) -> void:
	change_ui_scene.emit(scene, action)


func emit_quit_game() -> void:
	quit_game.emit()
