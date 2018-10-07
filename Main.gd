extends Node2D

var worldSize=100
var cells=load("res://Cell3button.tscn")
var world=[]
var workArray=[]
var spriteWidth=64
var spriteHeight=64
var xSpacing
var ySpacing


func _ready():
	xSpacing=spriteWidth	#tempSprite.texture.get_size().x
	ySpacing=spriteHeight	#tempSprite.texture.get_size().y

#create world array of nodes plus workarray
	for x in range(worldSize):
		world.append([])
		for y in range(worldSize):
			world[x].append(cells.instance())

#setup sprites in world.	
	for y in range(worldSize):
		for x in range(worldSize):
			add_child(world[y][x])
			world[y][x].position.x=x*xSpacing
			world[y][x].position.y=y*ySpacing
			world[y][x].id=y+x	
