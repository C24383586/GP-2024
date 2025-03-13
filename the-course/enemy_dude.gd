extends CharacterBody2D
var speed = 100
var attacking = false

func _process(delta: float) -> void:
	if attacking:
		position.x = position.x - speed


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
