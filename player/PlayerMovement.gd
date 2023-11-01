extends CharacterBody2D

var speed = 25000
var greeseMeter = 0

signal _greeseScore(gr)


func _process(delta):
	_greeseScore.emit(greeseMeter)
	
func _physics_process(delta):	
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed * delta
	print(direction)
	move_and_slide()


func _on_child_entered_tree(GreeseCll):
	pass # Replace with function body.
