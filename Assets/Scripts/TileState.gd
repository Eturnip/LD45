extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mouseover : bool
var location : int
signal flip
signal zLocation
#var positionz = get_parent().tilePositionz


# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StaticBody_mouse_entered():
	mouseover=true
	#print("mouse over")

func _on_StaticBody_mouse_exited():
	mouseover=false
	#print("mouse out")
	
func _input(event):
	if mouseover == true:
		if event.is_action_pressed("click") :
			emit_signal("flip")
			print(get_parent().tilePositionz)
			#emit_signal("zLocation",location)

