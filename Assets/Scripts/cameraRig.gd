extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var my_camera = get_node(".")
onready var my_tween = get_node("Tween")
onready var target_position = $"../Target".translation

#func _process(delta):
	
    #my_tween.interpolate_property(self,"translation",my_camera.translation,target_position,delta,Tween.TRANS_LINEAR,Tween.EASE_IN_OUT)
    #my_tween.start()
	
	#my_tween.interpolate_property(self, "translation", my_camera.translation, target_position, 1, Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
	#my_tween.start()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
