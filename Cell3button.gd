extends Node2D
var worldx
var worldy
var alive
var width
var height
var on=255
var off=0
var id=0
#var position

func _ready():
	worldx=0
	worldy=0
	alive=false
	#global_transform().set_origin(position)
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass



func _on_Button_pressed():
	print("button pressed id = "+str(id))
