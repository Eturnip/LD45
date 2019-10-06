extends Camera

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var flippedtiles : Array
var zDist=0
var zMax=0
var zMin=0
var vec3 : Vector3
#var rig = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	var current
	if event.is_action_pressed("click"):
		for member in get_tree().get_nodes_in_group("tiles"):
			if member.whiteup == false:
				#flippedtiles.append(member.tilePositionz)
				if member.tilePositionz>zMax :
					zMax=member.tilePositionz
				if member.tilePositionz<zMin :
					zMin=member.tilePositionz
		#flippedtiles.sort()
		zDist=zMax-zMin
		print("zDist",zDist)
		vec3.y=zDist
		movecamera()
		zMax = 0
		zMin = 0

func movecamera():
	get_parent().translate(vec3)
	pass

#func _process(delta):
	
#	zDist = zMax - zMin
