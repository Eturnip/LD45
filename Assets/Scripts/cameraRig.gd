extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var my_camera = get_node(".")
onready var my_tween = get_node("Tween")
onready var target_position = $"../Target".translation

func _ready():
	pass # Replace with function body.


#func _process(delta):
	
	#my_tween.interpolate_property($".","translation",my_camera.translation,target_position,0.5,Tween.TRANS_QUART,Tween.EASE_IN_OUT)
	#my_tween.follow_method($".", "translation", $".".translation, $".", "translation", 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, 0)
	#my_tween.start()
	
	#my_tween.interpolate_property(self, "translation", my_camera.translation, target_position, 1, Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
	#my_tween.start()

