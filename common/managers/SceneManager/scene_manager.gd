class_name SceneManager
extends Node

@export var world_3d: Node3D
@export var world_2d: Node2D
@export var ui: Control

var current_3d_scene: Node3D
var current_2d_scene: Node2D
var current_ui_scene: Control

func change_ui_scene(new_scene: String, action: Common_Type.SceneAction) -> void:
	# handle current scene
	if current_ui_scene != null:
		if action == Common_Type.SceneAction.HIDE:
			current_ui_scene.visible = false
		elif action == Common_Type.SceneAction.STOP:
			ui.remove_child(current_ui_scene)
		else:
			current_ui_scene.queue_free()
	
	if new_scene != "":
		var new = load(new_scene).instantiate()
		ui.add_child(new)
		current_ui_scene = new
