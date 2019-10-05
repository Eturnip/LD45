extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mouseover
signal flip


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StaticBody_mouse_entered():
	mouseover=true
	print("mouse over")

func _on_StaticBody_mouse_exited():
	mouseover=false
	print("mouse out")
	
func _input(event):
	if event.is_action_pressed("click") :
		if mouseover == true:
			emit_signal("flip")
			print("flip")
		else:
			print("no flip")
			

