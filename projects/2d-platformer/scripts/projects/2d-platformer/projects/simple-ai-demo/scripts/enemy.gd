extends CharacterBody2D

@export var speed = 100
var player = null

func _ready():
    player = get_tree().get_root().get_node("Main/Player")

func _physics_process(delta):
    if player:
        var direction = (player.global_position - global_position).normalized()
        velocity = direction * speed
        move_and_slide()
