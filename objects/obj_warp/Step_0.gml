if place_meeting(x, y, obj_aarch) and !instance_exists(obj_transition)
{
	var _instanciated = instance_create_depth(x, y, -9999, obj_transition)
	_instanciated.target_x = target_x;
	_instanciated.target_y = target_y;
	_instanciated.target_rm = target_rm;
}