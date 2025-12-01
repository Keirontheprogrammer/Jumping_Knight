extends Area2D
@onready var manager: Node = %manager
@onready var animation_player: AnimationPlayer = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _on_body_entered(body) -> void:
	manager.add_score()
	animation_player.play("pickup_nimation")
