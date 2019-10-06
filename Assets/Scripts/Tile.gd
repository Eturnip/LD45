extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#signal positionz
var whiteup = true
var tilePositionz =0

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("tiles")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_TileState_flip():
	#rotate_x(180)
	if whiteup == true:
		$AnimationPlayer.play("Flip")
		whiteup = false
	else:
		$AnimationPlayer.play_backwards("Flip")
		whiteup = true
	print("180")
	


func _on_TileState_zLocation(extra_arg_0):
	pass # Replace with function body.
