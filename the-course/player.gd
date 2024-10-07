extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn:Node2D

const SPEED = 500.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)
	
	var f = Input.get_axis("move_backwards", "move_forwards")

	var can_fire = true;

	var vel = transform.y * f * SPEED
	print(transform.y)
	velocity = vel
	move_and_slide()
	
	
	if Input.is_action_pressed("fire") and can_fire:
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn.global_position
		b.global_rotation = bullet_spawn.global_rotation
		get_tree().get_root().add_child(b) 
		can_fire = false
		$Timer.start()
	
	pass
	

func _on_timer_timeout():
	var can_fire = true
	pass # Replace with function body.
	
	
