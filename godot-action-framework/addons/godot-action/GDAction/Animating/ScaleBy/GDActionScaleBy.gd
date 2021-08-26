class_name GDActionScaleBy extends GDActionInterval

var by_vector_scale: Vector2


func _init(by_vector_scale: Vector2, duration: float).(duration):
	self.by_vector_scale = by_vector_scale


func _create_action_node(key: String, node):
	var action_node = GDActionNodeScaleBy.new(self, key, node)
	action_node.time_func = time_func
	return action_node


func _run_action(action_node: GDActionNode, delay: float, speed: float):
	._run_action(action_node, delay, speed)
	action_node.scale_by(by_vector_scale, duration, delay, speed)


func reversed() -> GDAction:
#	var scale_x = 1.0 / by_vector_scale.x if by_vector_scale.x != 0.0 else 0.0
#	var scale_y = 1.0 / by_vector_scale.y if by_vector_scale.x != 0.0 else 0.0
#	print(scale_x)
	return get_script().new(-by_vector_scale, duration)
