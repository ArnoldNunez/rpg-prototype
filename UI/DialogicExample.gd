extends Node2D

func _ready():
	var dialog = Dialogic.start("conversationWithLisa")
	add_child(dialog)
