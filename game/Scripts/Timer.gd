extends RichTextLabel

var ms = 0
var s = 59
var m = 4

func _process(delta):
	
	if ms <=0:
		s = s - 1
		ms = 60
		
	
	if s <= 0:
		m
		m = m - 1
		s = 59
		
	if s < 10:
		set_text(str(m)+":0"+str(s))
	else:
		set_text(str(m)+':'+str(s))
	ms = ms - 1
		
		
	
func _on_Timer_timeout():
	s = s - 1
	pass