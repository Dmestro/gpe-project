extends Node2D

@export var next_scene : String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_door_open_animate_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return
	$OpenDoor.show()

func _on_door_open_animate_body_exited(body: Node2D) -> void:
	if body.name != "Player":
		return
	$OpenDoor.hide()


func _on_go_to_next_scene_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return
	get_tree().change_scene_to_file(next_scene)
