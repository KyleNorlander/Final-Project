extends Spatial

### Vars here

onready var goodbye = false
###########################
### STOLEN FROM MY LAST ###
### 3D GAME. SORRY - C. ###
###########################

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	set_process(true)
	
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
func _process(delta):
	if goodbye == false:
		#if (get_parent().get_node("Character").fusegot == true) and (get_parent().get_node("Character").keygot == true):
		#	print("GOODBYE!!!")
		#	get_node("Bunker_Door").queue_free()# DELETE THE DOOR!
		#	goodbye = true
		if get_node("Character").fusegot == true:
			if get_node("Character").keygot == true:
				get_node("Bunker_Door").queue_free()
				print("GOODBYE!!")
	else:
		get_node("Bunker_Door").visible
	