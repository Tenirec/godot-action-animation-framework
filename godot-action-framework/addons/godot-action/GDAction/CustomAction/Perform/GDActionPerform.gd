class_name GDActionPerform extends GDActionInstant

var selector: String = ""
var on_target: Node


func _create_action_node(key: String, node):
	return GDActionNodePerform.new(self, key, node)


func _update_key_if_need(key: String) -> String:
	return _create_key_by_parent_key(key)


func _init(selector: String, on_target: Node).():
	self.selector = selector
	self.on_target = on_target


func _run_action(action_node: GDActionNode, node: Node, delay: float, speed: float):
	._run_action(action_node, node, delay, speed)
	action_node.start_perform(self.selector, self.on_target, delay, speed)
