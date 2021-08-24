class_name GDActionFadeAlphaBy extends GDActionInterval

var alpha_value: float


func _init(alpha_value: float, duration: float).(duration):
	self.alpha_value = alpha_value


func _create_action_node(key: String, node):
	var action_node = GDActionNodeFadeAlphaBy.new(self, key, node)
	action_node.time_func = time_func
	return action_node


func _run_action(action_node: GDActionNode, node: Node, delay: float, speed: float):
	._run_action(action_node, node, delay, speed)
	action_node.fade_alpha_by(alpha_value, duration, delay, speed)


func reversed() -> GDAction:
	return get_script().new(-alpha_value, duration)
