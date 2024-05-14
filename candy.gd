extends StaticBody2D

# Funcao chamada na inicializacao do objeto
func _ready():
	# iniciamos a animacao do Candy logo que ele eh instanciado
	$AnimatedSprite2D.play() # Replace with function body.

# funcao chamada para excluir o objeto do jogo
func kill():
	hide()                                        # escondemos o objeto
	$CollisionShape2D.disabled = true             # desabilitamos as collisoes

# funcao chamada quando a animacao termina fazendo
# com que nossa animacao fique em loop
func _on_animated_sprite_2d_animation_finished():
	$AnimatedSprite2D.play()                      # reinciamos a animacao
