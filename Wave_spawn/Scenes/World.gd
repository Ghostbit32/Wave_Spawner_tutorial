extends Node2D

var enemy = preload("res://Scenes/Enemy.tscn")


func _ready():
	pass



func _on_SpawnTimer_timeout():

	var enemy_instance = enemy.instance()
	add_child(enemy_instance)
	enemy_instance.position = $SpawnLocation.position
	
	var nodes = get_tree().get_nodes_in_group("spawn")
	var node = nodes[randi() % nodes.size()]
	var position = node.position
	$SpawnLocation.position = position
