extends Area2D
@onready var manager: Node = %manager


# Called when the node enters the scene tree for the first time.
func _on_body_entered(body) -> void:
	manager.add_score()
	queue_free()
