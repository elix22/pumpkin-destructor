extends Node3D

@export var Intencity:float = 5.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for piece:RigidBody3D in self.get_children():
		piece.apply_impulse(piece.position * Intencity,self.global_position)
		
	#await get_tree().create_timer(5).timeout
	#queue_free()
