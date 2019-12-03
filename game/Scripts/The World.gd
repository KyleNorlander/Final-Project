extends Spatial

### Vars here


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