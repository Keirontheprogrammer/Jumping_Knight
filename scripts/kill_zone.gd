extends Area2D

@onready var timer: Timer = $Timer
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	animation_player.play("hurt");
	print("DEATH comes in Three")

	# Check if the body is the player
	if body is CharacterBody2D:
		
		var player := body as CharacterBody2D
		
		player.play_death_animation()

		Engine.time_scale = 0.3

		# Remove player's collision
		var collision = player.get_node("CollisionShape2D")
		collision.queue_free()

		timer.start()
		

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
