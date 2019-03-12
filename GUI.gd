extends CanvasLayer

func _ready():
	if G.bet == 1:
		$Label.show()
		G.bet = 5
	
	
	$new_game.connect('pressed', self, "_button_new_game")
	$rate_us.connect('pressed', self, "rate_us")
	$more_apps.connect('pressed', self, "see_more_apps")
	$exit.connect('pressed', self, "exit_game")




func exit_game():
	get_tree().quit()

func see_more_apps():
	OS.shell_open("https://play.google.com/store/apps/developer?id=Alexandr+Saul")


func rate_us():
	OS.shell_open("https://play.google.com/store/apps/details?id=com.feriramara.slots")

func _button_new_game():
	G.credits = 100
	get_tree().change_scene("res://game.tscn")
	

