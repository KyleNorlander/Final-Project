extends RichTextLabel

var ms = 0
var s = 59
var m = 4

func _process(delta):
	
	if ms <=0:
		s = s - 1
		ms = 30
		
	
	if s <= 0:
		m
		m = m - 1
		s = 59
		
	if s < 10:
		set_text(str(m)+":0"+str(s))
	else:
		set_text(str(m)+':'+str(s))
	ms = ms - 1
	if m == 0:
		if s == 0:
			if ms == 0:
				#get_tree().change_scene("res://Scenes/End.tscn")
				pass # FIX ABOVE CORRECT END SCENE
		
	
func _on_Timer_timeout():
	s = s - 1
	pass