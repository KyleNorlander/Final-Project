extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true) 

func _physics_process(delta):
	if get_node("RayCast").get_collider():
		print("OK")
		queue_free()
#	if raycast.is_colliding():
#		var coll = raycast.get_collider()
#		if coll.name == "Character":
#			self.queue_free()
# CREATE RAYCASTING FOR KEY OBJECT
# CREATE KEY OBJET
# EDIT PLAYER FOR KEY OBJECT COLL.
