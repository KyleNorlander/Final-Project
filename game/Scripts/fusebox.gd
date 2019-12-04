extends Spatial

func _ready():
	set_physics_process(true) 

func _physics_process(delta):
	if get_node("RayCast").get_collider():
		print("OH ALRIGHT")
