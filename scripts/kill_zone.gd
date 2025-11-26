extends Area2D

@onready var timer: Timer = $Timer
 

func _on_body_entered(body: Node2D) -> void:
	print("DEATH comes in Three");
	Engine.time_scale = 0.3;
	
	var collision= body.get_node("CollisionShape2D");
	collision.queue_free();  
	timer.start();
	
func _on_timer_timeout() -> void:
	Engine.time_scale = 1;
	get_tree().reload_current_scene();
	
