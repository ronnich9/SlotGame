extends Node

var credits = 100
var bet     = 5
var win     = 0
var best    = 0

var test = "hello"
const gamedata = 'user://gamedata.save'
var fs = File.new()

func save():
	fs.open(gamedata, File.WRITE)
	fs.store_32(best)
	#fs.store_string(test)
	fs.close()

func load_best():
	fs.open(gamedata, File.READ)
	best = fs.get_32()
	#test = fs.get_as_text()
	fs.close()