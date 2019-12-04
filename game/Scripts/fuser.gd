extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var green = false
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process( true )
	get_parent().get_node("Fuse/CSGBox/OmniLight").visible = not get_parent().get_node("Fuse/CSGBox/OmniLight").visible 

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):


func _physics_process(delta):
	if green == false:
		if (get_node("RayCast").get_collider()) and (get_parent().get_node("Character").keygot == true):
			print("FUSED!")
			get_parent().get_node("Fuse/CSGBox/OmniLight").visible = not get_parent().get_node("Fuse/CSGBox/OmniLight").visible
			get_parent().get_node("Fuse/CSGBox/OmniLight2").visible
			get_parent().get_node("Character").fusegot == true
			green = true
	else:
		get_parent().get_node("Fuse/CSGBox/OmniLight2").visible
	



############ TEST CODE THAT DOES NOT WORK #####################

#func _physics_process(delta):
#	var bodies = get_colliding_bodies()
#
#	if get_colliding_bodies():
#		print("OW")
#		
#		
#	for curBody in bodies:
#		print( "collision :" + curBody.get_name() )
#		
##	pass