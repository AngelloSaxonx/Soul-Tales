var _right_key = keyboard_check(vk_right);
var _up_key = keyboard_check(vk_up);
var _left_key = keyboard_check(vk_left);
var _down_key = keyboard_check(vk_down);

if keyboard_check(vk_shift) or keyboard_check(ord("X"))
{
	move_spd = run_spd;
}
else
{
	move_spd = walk_spd;
}

xspd = (_right_key - _left_key)*move_spd;
yspd = (_down_key - _up_key)*move_spd;




if xspd < 0 {sprite_index = spr_aarch_right}
if xspd > 0 {sprite_index = spr_aarch_left}

if yspd > 0 {sprite_index = spr_aarch_down}
if yspd < 0 {sprite_index = spr_aarch_up}

if place_meeting(x + xspd, y, obj_wall)
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall)
{
	yspd = 0;
}

y += yspd;
x += xspd;

if xspd != 0 or yspd != 0 
{
	image_speed = 1;
}
else 
{
	image_speed = 0;
	image_index = 0;
}

depth = -bbox_bottom;