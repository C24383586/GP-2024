extends Area2D


func _on_area_entered(area: Area2D) -> void:
	
	pass # Replace with function body.


func _on_body_entered(body: Node2D) -> void:
	body.ammo += 100
	print("Hello")
	force_update_transform()
	pass # Replace with function body.
