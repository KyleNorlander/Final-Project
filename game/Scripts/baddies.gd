extends KinematicBody

const MOVE_SPEED = 1.872

onready var raycast = $RayCast
onready var anim_player = $AnimationPlayer
onready var dead = false

var player = null

func _ready():
	#anim_player.play("walking")
	add_to_group("zombies")

func _physics_process(delta):
	if dead == false:
		var vec_to_player = player.translation - translation
		vec_to_player = vec_to_player.normalized()
		raycast.cast_to = vec_to_player * 1.5
	
		move_and_collide(vec_to_player * MOVE_SPEED * delta)
	
		if raycast.is_colliding():
			var coll = raycast.get_collider()
			if coll != null and coll.name == "Character":
				coll.speed = (coll.speed - coll.speed/2)
				anim_player.play("death")
				dead = true
	else:
		pass
	
			
func kill():
	$CollisionShape.disabled = true
	
			

	
func set_player(p):
	player = p