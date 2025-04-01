extends CharacterBody2D
const enemyRun = 90

func _ready():
	velocity.x = -enemyRun
	$AnimatedSprite2D.scale.x = -1
	$AnimatedSprite2D.play('default')

func _physics_process(delta: float) -> void:

	if is_on_wall():
		if !$AnimatedSprite2D.flip_h:
			velocity.x = enemyRun
		else:
			velocity.x = -enemyRun
			
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = false
	elif velocity.x > 0:
		$AnimatedSprite2D.flip_h = true
		
	move_and_slide()
	
	
