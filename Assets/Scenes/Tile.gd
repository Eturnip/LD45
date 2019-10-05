extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var whiteup = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TileState_flip():
	#rotate_x(180)
	if whiteup == true:
		$AnimationPlayer.play("Flip")
		whiteup = !whiteup
	else:
		$AnimationPlayer.play_backwards("Flip")
		whiteup = !whiteup
	print("180")
	
