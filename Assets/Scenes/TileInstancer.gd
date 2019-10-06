extends Node
# Declare member variables here. Examples:
var halfSizex = 16
var halfSizez = 16
var tileScene = preload("res://Assets/Scenes/Tile.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	#var tileInstance=tileScene.instance()
	createTileGrid()

func createTileGrid():
	
	var gridPosx=-halfSizex
	var gridPosz=-halfSizez
	#var grid = []
	var vec3 = Vector3()
	vec3.y = 0
	while gridPosx<halfSizex:
		gridPosz = -halfSizez
		vec3.x = gridPosx
		while gridPosz<halfSizez:
			vec3.z = gridPosz
			var tileInstance=tileScene.instance()
			tileInstance.translate(vec3)
			print("created instance")
			self.add_child(tileInstance)
			gridPosz+=1
		gridPosx+=1
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
