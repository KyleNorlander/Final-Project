extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process( true )

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):


func _physics_process(delta):
	if get_node("RayCast").get_collider():
		print("OK")
		# FLIP SWITCH
	



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