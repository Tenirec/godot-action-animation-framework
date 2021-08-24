class_name GDActionMoveBy extends GDActionInterval

var vector: Vector2


func _init(vector: Vector2, duration: float).(duration):
	self.vector = vector


func _create_action_node(key: String, node):
	var action_node = GDActionNodeMoveBy.new(self, key, node)
	action_node.time_func = time_func
	return action_node


func _run_action(action_node: GDActionNode, node: Node, delay: float, speed: float):
	._run_action(action_node, node, delay, speed)
	action_node.move_by(vector, duration, delay, speed)


func reversed() -> GDAction:
	return get_script().new(-vector, duration)
