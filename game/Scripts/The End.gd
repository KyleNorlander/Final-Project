extends Spatial

onready var sundemon = $Sundemon
onready var x = 0
onready var y = 0
var z = 0
var velocity = Vector3()


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	
func _process(delta):
	y=y - 1
