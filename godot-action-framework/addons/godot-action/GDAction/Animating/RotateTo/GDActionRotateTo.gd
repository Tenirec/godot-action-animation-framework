class_name GDActionRotateTo extends GDActionInterval

var to_angle: float


func _init(to_angle: float, duration: float).(duration):
	self.to_angle = to_angle


func _create_action_node(key: String, node):
	var action_node = GDActionNodeRotateTo.new(self, key, node)
	action_node.time_func = time_func
	return action_node


func _run_action(action_node: GDActionNode, delay: float, speed: float):
	._run_action(action_node, delay, speed)
	action_node.rotate_to(to_angle, duration, delay, speed)

