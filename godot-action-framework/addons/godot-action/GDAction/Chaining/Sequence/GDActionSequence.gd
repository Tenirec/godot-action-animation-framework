class_name GDActionSequence extends GDActionInstant

var list_action: Array = []


func _create_action_node(key: String, node):
	return GDActionNodeSequence.new(self, key, node)


func _update_key_if_need(key: String) -> String:
	return _create_key_by_parent_key(key)


func _init(list_action: Array).():
	self.list_action = list_action


func _run_action(action_node: GDActionNode, node: Node, delay: float, speed: float):
	._run_action(action_node, node, delay, speed)
	action_node.start_sequence(self.list_action, delay, speed)


func _prepare_remove_action_node_from_key(key: String):
	for action in list_action:
		action._remove_action_node_from_parent_key(key)


func _prepare_stop_action_with_key(key: String):
	for action in list_action:
		action._stop_action_with_parem_key(key)