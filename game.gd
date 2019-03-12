extends Node2D


var m = 0
var i = 0
var small_cherry_win = 2
var small_cherry_help = small_cherry_win * G.bet
var big_cherry_win = 5
var big_cherry_help = big_cherry_win * G.bet
var three_cherry = 10
var three_cherry_help = three_cherry * G.bet
var three_lemons = 25
var three_lemons_help = three_lemons * G.bet
var three_rings = 50
var three_rings_help = three_rings * G.bet
var three_horse = 50
var three_horse_help = three_horse * G.bet
var three_seven = 100
var three_seven_help = three_seven * G.bet
var three_ruby = 800
var three_ruby_help = three_ruby * G.bet

var admob = null
var isReal = false
var isTop = true
var adBannerId = "ca-app-pub-7413250512006579/5251268709"
#var adBannerId = "ca-app-pub-7413250512006579/2386225466"

var bucketImage
var bucketSprite

var slot1_texture = preload("res://images/icon_7.png")
var slot2_texture = preload("res://images/icon_6.png")
var slot3_texture = preload("res://images/icon_5.png")
var slot4_texture = preload("res://images/icon_4.png")
var slot5_texture = preload("res://images/icon_12.png")
#var slot6_texture = preload("res://images/icon_10.png")
var slot7_texture = preload("res://images/icon_9.png")

onready var audio = get_node("sound")
onready var back_audio = get_node("back_audio")
onready var plus_audio = get_node("plus_minus")

onready var song = get_node("song")

onready var anim = get_node("node_animation")
onready var sprite1 = get_node("Sprite")
onready var sprite2 = get_node("Sprite2")
onready var sprite3 = get_node("Sprite3")
onready var sprite4 = get_node("Sprite4")
onready var sprite5 = get_node("Sprite5")
onready var sprite6 = get_node("Sprite6")
onready var sprite7 = get_node("Sprite7")
onready var sprite8 = get_node("Sprite8")
onready var sprite9 = get_node("Sprite9")
onready var sprite10 = get_node("Sprite10")
onready var sprite11 = get_node("Sprite11")
onready var sprite12 = get_node("Sprite12")
onready var sprite13 = get_node("Sprite13")
onready var sprite14 = get_node("Sprite14")
onready var sprite15 = get_node("Area2D/Sprite15")
onready var sprite16 = get_node("Sprite16")

onready var anim2 = get_node("animation2")
onready var sprite17 = get_node("Sprite17")
onready var sprite18 = get_node("Sprite18")
onready var sprite19 = get_node("Sprite19")
onready var sprite20 = get_node("Sprite20")
onready var sprite21 = get_node("Sprite21")
onready var sprite22 = get_node("Sprite22")
onready var sprite23 = get_node("Sprite23")
onready var sprite24 = get_node("Sprite24")
onready var sprite25 = get_node("Sprite25")
onready var sprite26 = get_node("Sprite26")
onready var sprite27 = get_node("Sprite27")
onready var sprite28 = get_node("Sprite28")
onready var sprite29 = get_node("Sprite29")
onready var sprite30 = get_node("Sprite30")
onready var sprite31 = get_node("Area2D3/Sprite31")
onready var sprite32 = get_node("Sprite32")

onready var anim3 = get_node("animation3")
onready var sprite33 = get_node("Sprite33")
onready var sprite34 = get_node("Sprite34")
onready var sprite35 = get_node("Sprite35")
onready var sprite36 = get_node("Sprite36")
onready var sprite37 = get_node("Sprite37")
onready var sprite38 = get_node("Sprite38")
onready var sprite39 = get_node("Sprite39")
onready var sprite40 = get_node("Sprite40")
onready var sprite41 = get_node("Sprite41")
onready var sprite42 = get_node("Sprite42")
onready var sprite43 = get_node("Sprite43")
onready var sprite44 = get_node("Sprite44")
onready var sprite45 = get_node("Sprite45")
onready var sprite46 = get_node("Sprite46")
onready var sprite47 = get_node("Area2D4/Sprite47")
onready var sprite48 = get_node("Sprite48")

var my_array = [slot1_texture, slot2_texture,
 slot7_texture, slot1_texture, slot2_texture, slot3_texture, slot4_texture,
 slot7_texture, slot1_texture, slot2_texture, slot3_texture, slot4_texture, slot5_texture,
 slot7_texture]

var player


func _ready():
	if(Engine.has_singleton("AdMob")):
		admob = Engine.get_singleton("AdMob")
		admob.init(isReal, get_instance_id())
		loadBanner()
	
	get_tree().connect("screen_resized", self, "onResize")
	G.load_best()
	
	
	sprite1.set_texture(my_array[rand_int()])
	sprite2.set_texture(my_array[rand_int()])
	sprite3.set_texture(my_array[rand_int()])
	sprite4.set_texture(my_array[rand_int()])
	sprite5.set_texture(my_array[rand_int()])
	sprite6.set_texture(my_array[rand_int()])
	sprite7.set_texture(my_array[rand_int()])
	sprite8.set_texture(my_array[rand_int()])
	sprite9.set_texture(my_array[rand_int()])
	sprite10.set_texture(my_array[rand_int()])
	sprite11.set_texture(my_array[rand_int()])
	sprite12.set_texture(my_array[rand_int()])
	sprite13.set_texture(my_array[rand_int()])
	sprite14.set_texture(my_array[rand_int()])
	sprite15.set_texture(my_array[rand_int()])
	sprite16.set_texture(my_array[rand_int()])
	
	sprite17.set_texture(my_array[rand_int()])
	sprite18.set_texture(my_array[rand_int()])
	sprite19.set_texture(my_array[rand_int()])
	sprite20.set_texture(my_array[rand_int()])
	sprite21.set_texture(my_array[rand_int()])
	sprite22.set_texture(my_array[rand_int()])
	sprite23.set_texture(my_array[rand_int()])
	sprite24.set_texture(my_array[rand_int()])
	sprite25.set_texture(my_array[rand_int()])
	sprite26.set_texture(my_array[rand_int()])
	sprite27.set_texture(my_array[rand_int()])
	sprite28.set_texture(my_array[rand_int()])
	sprite29.set_texture(my_array[rand_int()])
	sprite30.set_texture(my_array[rand_int()])
	sprite31.set_texture(my_array[rand_int()])
	sprite32.set_texture(my_array[rand_int()])
	
	sprite33.set_texture(my_array[rand_int()])
	sprite34.set_texture(my_array[rand_int()])
	sprite35.set_texture(my_array[rand_int()])
	sprite36.set_texture(my_array[rand_int()])
	sprite37.set_texture(my_array[rand_int()])
	sprite38.set_texture(my_array[rand_int()])
	sprite39.set_texture(my_array[rand_int()])
	sprite40.set_texture(my_array[rand_int()])
	sprite41.set_texture(my_array[rand_int()])
	sprite42.set_texture(my_array[rand_int()])
	sprite43.set_texture(my_array[rand_int()])
	sprite44.set_texture(my_array[rand_int()])
	sprite45.set_texture(my_array[rand_int()])
	sprite46.set_texture(my_array[rand_int()])
	sprite47.set_texture(my_array[rand_int()])
	sprite48.set_texture(my_array[rand_int()])
	
	
	$button_spin.connect('pressed', self, "_button_spin")
	$minus.connect('pressed', self, "_button_minus")
	$plus.connect('pressed', self, "_button_plus")
	$info.connect('pressed', self, "show_info")
	$star.connect('pressed', self, "rate_app")
	
	
	
	
	


func _button_spin():
	G.credits -= G.bet 
	G.win = 0
	i = 0
	m = 0
	small_cherry_win = 2
	small_cherry_help = small_cherry_win * G.bet
	big_cherry_win = 5
	big_cherry_help = big_cherry_win * G.bet
	three_cherry = 10
	three_cherry_help = three_cherry * G.bet
	three_lemons = 25
	three_lemons_help = three_lemons * G.bet
	three_rings = 50
	three_rings_help = three_rings * G.bet
	three_horse = 50
	three_horse_help = three_horse * G.bet
	three_seven = 100
	three_seven_help = three_seven * G.bet
	three_ruby = 800
	three_ruby_help = three_ruby * G.bet
	
	var testSprite = sprite14.get_texture()
	var testSprite2 = sprite15.get_texture()
	var testSprite3 = sprite16.get_texture()
	var testSprite4 = sprite30.get_texture()
	var testSprite5 = sprite31.get_texture()
	var testSprite6 = sprite32.get_texture()
	var testSprite7 = sprite46.get_texture()
	var testSprite8 = sprite47.get_texture()
	var testSprite9 = sprite48.get_texture()
	start_new_game(testSprite, testSprite2, testSprite3, testSprite4, testSprite5, testSprite6, testSprite7, testSprite8, testSprite9)




func rand_int():
	randomize()
	return randi()%14
	
	
	
	
	
func start_new_game(img, img2, img3, img4, img5, img6, img7, img8, img9):
	
	
	#sprite1.set_texture(my_array[rand_int()])
	#sprite2.set_texture(my_array[rand_int()])
	#sprite3.set_texture(my_array[rand_int()])
	sprite4.set_texture(my_array[rand_int()])
	sprite5.set_texture(my_array[rand_int()])
	sprite6.set_texture(my_array[rand_int()])
	sprite7.set_texture(my_array[rand_int()])
	sprite8.set_texture(my_array[rand_int()])
	sprite9.set_texture(my_array[rand_int()])
	sprite10.set_texture(my_array[rand_int()])
	sprite11.set_texture(my_array[rand_int()])
	sprite12.set_texture(my_array[rand_int()])
	sprite13.set_texture(my_array[rand_int()])
	sprite14.set_texture(my_array[rand_int()])
	sprite15.set_texture(my_array[rand_int()])
	sprite16.set_texture(my_array[rand_int()])
	
	#sprite17.set_texture(my_array[rand_int()])
	#sprite18.set_texture(my_array[rand_int()])
	#sprite19.set_texture(my_array[rand_int()])
	sprite20.set_texture(my_array[rand_int()])
	sprite21.set_texture(my_array[rand_int()])
	sprite22.set_texture(my_array[rand_int()])
	sprite23.set_texture(my_array[rand_int()])
	sprite24.set_texture(my_array[rand_int()])
	sprite25.set_texture(my_array[rand_int()])
	sprite26.set_texture(my_array[rand_int()])
	sprite27.set_texture(my_array[rand_int()])
	sprite28.set_texture(my_array[rand_int()])
	sprite29.set_texture(my_array[rand_int()])
	sprite30.set_texture(my_array[rand_int()])
	sprite31.set_texture(my_array[rand_int()])
	sprite32.set_texture(my_array[rand_int()])
	
	#sprite33.set_texture(my_array[rand_int()])
	#sprite34.set_texture(my_array[rand_int()])
	#sprite35.set_texture(my_array[rand_int()])
	sprite36.set_texture(my_array[rand_int()])
	sprite37.set_texture(my_array[rand_int()])
	sprite38.set_texture(my_array[rand_int()])
	sprite39.set_texture(my_array[rand_int()])
	sprite40.set_texture(my_array[rand_int()])
	sprite41.set_texture(my_array[rand_int()])
	sprite42.set_texture(my_array[rand_int()])
	sprite43.set_texture(my_array[rand_int()])
	sprite44.set_texture(my_array[rand_int()])
	sprite45.set_texture(my_array[rand_int()])
	sprite46.set_texture(my_array[rand_int()])
	sprite47.set_texture(my_array[rand_int()])
	sprite48.set_texture(my_array[rand_int()])
	
	sprite1.set_texture(img)
	sprite2.set_texture(img2)
	sprite3.set_texture(img3)
	sprite17.set_texture(img4)
	sprite18.set_texture(img5)
	sprite19.set_texture(img6)
	sprite33.set_texture(img7)
	sprite34.set_texture(img8)
	sprite35.set_texture(img9)
	anim.play('anim')
	anim2.play('anim')
	anim3.play('anim3')
	back_audio.play()
	
	
	

func _physics_process(delta):
	
	if i == 3 and (sprite15.get_texture() == slot3_texture and sprite31.get_texture() == slot3_texture and sprite47.get_texture() == slot3_texture):
		get_tree().get_root().set_disable_input(true)
		if (song.is_playing() != true and m == 0):
			song.play()
		m += 1
		while three_cherry_help > 0:
			G.win += 1
			$bg/win.text = str(three_cherry_help)
			three_cherry_help -= 1
			G.credits += 1
			$bg/credit.text = str(G.credits)
			print(three_cherry_help)
			if three_cherry_help == 0:
				song.stop()
				i = 0
				get_tree().get_root().set_disable_input(false)
			return
	
	
	elif i == 3 and ((sprite15.get_texture() == slot3_texture and sprite31.get_texture() == slot3_texture) or (sprite15.get_texture() == slot3_texture and sprite47.get_texture() == slot3_texture) or (sprite47.get_texture() == slot3_texture and sprite31.get_texture() == slot3_texture)):
		get_tree().get_root().set_disable_input(true)
		if (song.is_playing() != true and m == 0):
			song.play()
		m += 1
		while big_cherry_help > 0:
			G.win += 1
			$bg/win.text = str(big_cherry_help)
			big_cherry_help -= 1
			G.credits += 1
			$bg/credit.text = str(G.credits)
			print(big_cherry_help)
			if big_cherry_help == 0:
				song.stop()
				i = 0
				get_tree().get_root().set_disable_input(false)
			return
		
		
	#elif i == 3 and (sprite15.get_texture() == slot3_texture or sprite31.get_texture() == slot3_texture or sprite47.get_texture() == slot3_texture):
	elif i == 3 and sprite15.get_texture() == slot3_texture:
		get_tree().get_root().set_disable_input(true)
		if (song.is_playing() != true and m == 0):
			song.play()
		m += 1
		while small_cherry_help > 0:
			G.win += 1
			$bg/win.text = str(small_cherry_help)
			small_cherry_help -= 1
			G.credits += 1
			$bg/credit.text = str(G.credits)
			print(small_cherry_help)
			if small_cherry_help == 0:
				song.stop()
				i = 0
				get_tree().get_root().set_disable_input(false)
			return
			
			
			
	elif i == 3 and (sprite15.get_texture() == slot2_texture and sprite31.get_texture() == slot2_texture and sprite47.get_texture() == slot2_texture):
		get_tree().get_root().set_disable_input(true)
		if (song.is_playing() != true and m == 0):
			song.play()
		m += 1
		while three_lemons_help > 0:
			G.win += 1
			$bg/win.text = str(three_lemons_help)
			three_lemons_help -= 1
			G.credits += 1
			$bg/credit.text = str(G.credits)
			if three_lemons_help == 0:
				song.stop()
				i = 0
				get_tree().get_root().set_disable_input(false)
			print(three_lemons_help)
			return
			
	elif i == 3 and (sprite15.get_texture() == slot7_texture and sprite31.get_texture() == slot7_texture and sprite47.get_texture() == slot7_texture):
		get_tree().get_root().set_disable_input(true)
		if (song.is_playing() != true and m == 0):
			song.play()
		m += 1
		while three_rings_help > 0:
			G.win += 1
			$bg/win.text = str(three_rings_help)
			three_rings_help -= 1
			G.credits += 1
			$bg/credit.text = str(G.credits)
			print(three_rings_help)
			if three_rings_help == 0:
				song.stop()
				i = 0
				get_tree().get_root().set_disable_input(false)
			return
			
	elif i == 3 and (sprite15.get_texture() == slot1_texture and sprite31.get_texture() == slot1_texture and sprite47.get_texture() == slot1_texture):
		get_tree().get_root().set_disable_input(true)
		if (song.is_playing() != true and m == 0):
			song.play()
		m += 1
		while three_horse_help > 0:
			G.win += 1
			$bg/win.text = str(three_horse_help)
			three_horse_help -= 1
			G.credits += 1
			$bg/credit.text = str(G.credits)
			print(three_horse_help)
			if three_horse_help == 0:
				song.stop()
				i = 0
				get_tree().get_root().set_disable_input(false)
			return
			
	elif i == 3 and (sprite15.get_texture() == slot4_texture and sprite31.get_texture() == slot4_texture and sprite47.get_texture() == slot4_texture):
		get_tree().get_root().set_disable_input(true)
		if (song.is_playing() != true and m == 0):
			song.play()
		m += 1
		while three_seven_help > 0:
			G.win += 1
			$bg/win.text = str(three_seven_help)
			three_seven_help -= 1
			G.credits += 1
			$bg/credit.text = str(G.credits)
			print(three_seven_help)
			if three_seven_help == 0:
				song.stop()
				i = 0
				get_tree().get_root().set_disable_input(false)
			return
			
	elif i == 3 and (sprite15.get_texture() == slot5_texture and sprite31.get_texture() == slot5_texture and sprite47.get_texture() == slot5_texture):
		get_tree().get_root().set_disable_input(true)
		if (song.is_playing() != true and m == 0):
			song.play()
		m += 1
		while three_ruby_help > 0:
			G.win += 1
			$bg/win.text = str(three_ruby_help)
			three_ruby_help -= 1
			G.credits += 1
			$bg/credit.text = str(G.credits)
			print(three_ruby_help)
			if three_ruby_help == 0:
				song.stop()
				i = 0
				get_tree().get_root().set_disable_input(false)
			return


	if G.credits > G.best:
		G.best = G.credits
		G.save()
		
	if G.credits == 0 and i == 3:
		get_tree().change_scene("res://menu.tscn")

		
	
	if G.bet > G.credits:
		G.bet = G.credits
	
	if G.bet < 1:
		G.bet = 1
	
	
	

	$bg/bet.text = str(G.bet)
	$bg/credit.text = str(G.credits)
	$bg/win.text = str(G.win)
	$bg/bet_2.text = str(G.bet)
	$bg/best_result.text = "BEST: " + str(G.best)


func _button_minus():
	G.bet -= 1
	plus_audio.play()

func _button_plus():
	G.bet += 1
	plus_audio.play()

func show_info():
	if $texture.is_visible_in_tree() == false:
		$texture.show()
	else: $texture.hide()

func rate_app():
	OS.shell_open("https://play.google.com/store/apps/details?id=com.feriramara.slots")



func loadBanner():
	if admob != null:
		admob.loadBanner(adBannerId, isTop)
		admob.showBanner()



func onResize():
	if admob != null:
		admob.resize()






func _on_Area2D2_area_entered(area):
	i += 1
	print(str(i))
	audio.play()
	
