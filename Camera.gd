extends Camera2D
var scrollSpeed=10
var zoomSpeed=0.75

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _process(delta):
	#check for scrolling screen down	
	if Input.is_action_pressed('ui_down'):
		scrolldown()
#	#check for scrolling up
	if Input.is_action_pressed('ui_up'):
		scrollup()
#	#check for left scroll
	if Input.is_action_pressed('ui_left'):
		scrollleft()
#	#check for scroll right
	if Input.is_action_pressed('ui_right'):
		scrollright()
	if Input.is_action_pressed('ui_page_up'):
		zoom+=Vector2(zoomSpeed*delta,zoomSpeed*delta)
	if Input.is_action_pressed('ui_page_down'):
		zoom-=Vector2(zoomSpeed*delta,zoomSpeed*delta)
		if zoom<=Vector2(0,0):
			zoom=Vector2(0,0)

func scrolldown():
	position.y += scrollSpeed#*delta
	
func scrollup():
	position.y -= scrollSpeed#*delta
	
func scrollleft():
	position.x -= scrollSpeed#*delta
	
func scrollright():
	position.x += scrollSpeed#*delta


#mouse scroll button only works in input function		
func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
        # zoom in
			if event.button_index == BUTTON_WHEEL_UP:
				#zoom_pos = get_global_mouse_position()
				zoom+=Vector2(zoomSpeed,zoomSpeed)
			if event.button_index == BUTTON_WHEEL_DOWN:
				zoom-=Vector2(zoomSpeed,zoomSpeed)
				if zoom.x<=0 or zoom.y<=0:
					zoom=Vector2(0,0)
					

	