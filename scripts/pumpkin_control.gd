extends Node3D

@export var broken_model_scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
	
func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		var current_position = self.global_position
		var broken_pumpkin = broken_model_scene.instantiate()
		get_parent().add_child(broken_pumpkin)
		broken_pumpkin.global_position = current_position
		queue_free()
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
