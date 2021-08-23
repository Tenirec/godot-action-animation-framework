class_name GDActionCustomAction extends GDActionInterval

var selector: String = ""
var on_target: Node


func _create_action_node(key: String, node):
	return GDActionNodeCustomAction.new(self, key, node)


func _init(selector: String, on_target: Node, duration: float).(duration):
	self.selector = selector
	self.on_target = on_target


func _run_action(action_node: GDActionNode, node: Node, delay: float, speed: float):
	._run_action(action_node, node, delay, speed)
	action_node.start_custom_action(self.selector, self.on_target, duration, delay, speed)
