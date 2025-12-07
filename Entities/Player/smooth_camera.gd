extends Camera3D

@export var speed: float = 44.0
@onready var camera_pivot: Node3D = $".."

func _ready() -> void:
	# Player not mp auth don't handle camera
	var player = get_parent().get_parent()

	if !player.is_multiplayer_authority():
		current = false
	else:
		current = true

func _physics_process(delta: float) -> void:
	if !current:
		return

	var weight: float = clamp(delta * speed, 0.0, 1.0)
	global_transform = global_transform.interpolate_with(camera_pivot.global_transform, weight)
	global_position = camera_pivot.global_position
