extends Control

func _ready():
	$VBoxContainer/NewGame.grab_focus()
	pass
#
#func _process(delta):
#	pass


func _on_NewGame_pressed():
	pass
	# Change scene
	#get_tree().change_scene("res://UI/MainMenu.tscn")
	get_tree().change_scene("res://UI/DialogicExample.tscn")


func _on_LoadGame_pressed():
	pass
	#	get_tree().change_scene("res://UI/MainMenu.tscn")
	

func _on_Database_pressed():
	pass # Replace with function body.
	#	get_tree().change_scene("res://UI/MainMenu.tscn")


func _on_Settings_pressed():
	pass # Replace with function body.
	#	get_tree().change_scene("res://UI/MainMenu.tscn")


func _on_Exit_pressed():
	get_tree().quit()


func _on_Prototype_pressed():
	# Start prototype scene
	get_tree().change_scene("res://PrototypeScene.tscn")
	pass # Replace with function body.
