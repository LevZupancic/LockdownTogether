class_name CommonType
extends Node

enum GameState {
	MAIN_MENU,
	ACTIVE,
	DEAD,
	PAUSED,
}

enum SceneAction {
	HIDE,
	STOP,
	DELETE,
}


## Scenes
var scene_dict = {
	"Main menu": "res://common/managers/UI/MainMenu.tscn",
}
