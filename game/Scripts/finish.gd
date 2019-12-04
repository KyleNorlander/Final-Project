extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	if get_parent().get_node("Character").keygot == true and get_parent().get_node("Character").fusegot == true:
		if get_node("RayCast").get_collider():
			#get_tree().change_scene("res://Scenes/Win.tscn") # WIN SCREEN GOES THERE
			pass
