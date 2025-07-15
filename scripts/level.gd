extends Node3D

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_left"):
		get_tree().reload_current_scene()
		
	# Take screenshot with a key press (e.g., F10)
	if Input.is_key_pressed(KEY_F10):
		take_screenshot()
		
func take_screenshot():
	var viewport = get_viewport()
	var image = viewport.get_texture().get_image()
	var timestamp = Time.get_datetime_string_from_system().replace(":", "-")
	var filename = "screenshot_" + timestamp + ".png"
	image.save_png("res://screenshots/" + filename)
	print("Screenshot saved: ", filename)
