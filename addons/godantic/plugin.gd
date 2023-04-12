# https://github.com/gorecom/godantic
# Created by Gorecom Studio
# MIT License

@tool
extends EditorPlugin


func _enter_tree() -> void:
	""" Event called when the project is opened in Godot """
	
	# Add singleton to global variables
	# Required to access anywhere
	add_autoload_singleton("Godantic", "res://addons/godantic/godantic.gd")
	
	
func _exit_tree() -> void:
	""" Event called when the Godot is closed """
	
	# Remove singleton from global variables
	remove_autoload_singleton("Godantic")
