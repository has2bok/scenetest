extends Sprite
var worldx
var worldy
var alive
var width
var height
var on=255
var off=0
var id=0
#var offset=Vector2(0,0)

func _ready():
	worldx=0
	worldy=0
	alive=false
#	height=self.texture.get_size().x
#	width=self.texture.get_size().y
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _unhandled_input(event):
    if event is InputEventMouseButton and event.pressed and not event.is_echo() and event.button_index == BUTTON_LEFT:
        var pos = position + offset - ( (texture.get_size() / 2.0) if centered else Vector2() ) # added this 2
        if Rect2(pos, texture.get_size()).has_point(event.position): # added this
            print("x = "+str(position.x)+" y = "+str(position.y))
            print("cell id = "+str(id))
            get_tree().set_input_as_handled() # if you don't want subsequent input callbacks to respond to this input


