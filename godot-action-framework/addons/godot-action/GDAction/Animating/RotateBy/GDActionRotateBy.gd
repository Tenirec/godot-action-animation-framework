class_name GDActionRotateBy extends GDActionInterval

var by_angle: float


func _init(by_angle: float, duration: float).(duration):
	self.by_angle = by_angle


func _create_action_node(key: String, node):
	var action_node = GDActionNodeRotateBy.new(self, key, node)
	action_node.time_func = time_func
	return action_node


func _run_action(action_node: GDActionNode, node: Node, delay: float, speed: float):
	._run_action(action_node, node, delay, speed)
	action_node.rotate_by(by_angle, duration, delay, speed)


func reversed() -> GDAction:
	return get_script().new(-by_angle, duration)
