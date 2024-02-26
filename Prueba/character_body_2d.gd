extends CharacterBody2D


func _ready():
	$Animaciones.play("andar")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direccion =Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = direccion * 200
	move_and_slide()
