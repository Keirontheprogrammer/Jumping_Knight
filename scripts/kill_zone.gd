extends Area2D

@onready var timer: Timer = $Timer
 

func _on_body_entered(body) -> void:
	print("DEATH comes in Three");
	timer.start();
	
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene();
	
	#get_tree().change_scene_to_file("res://scenes/level_2.tscn")
