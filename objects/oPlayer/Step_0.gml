/// @description 

#region Get Input
if (hasControl)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

	key_action = keyboard_check_pressed(ord("E"));
	key_shift = keyboard_check(vk_shift);

}
else
{
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
	key_action = 0;
	key_shift = 0;
}
#endregion

#region Set Direction and Speed
var dir_h = key_right - key_left;
var dir_v = key_down - key_up;

move_h = dir_h * ((key_shift * 3) + mv_speed);
move_v = dir_v * ((key_shift * 3) + mv_speed);

#endregion

#region Horizontal Collision
if (place_meeting(x+move_h, y, oCollisionParent)) {
	while(!place_meeting(x+sign(move_h), y, oCollisionParent))
	{
		x += sign(move_h);
	}
	move_h = 0;
}

#endregion

#region Vertical Collision
if (place_meeting(x, y+move_v, oCollisionParent)) {
	while(!place_meeting(x, y+sign(move_v), oCollisionParent))
	{
		y += sign(move_v);
	}
	move_v = 0;
}

#endregion

#region Update Location
x += move_h;
y += move_v;
#endregion

#region Update Insanity Levels

if(distance_to_object(oCampFire) <= oGameController.lightRadius && !global.enemyAttacking)
{
	if(curr_sanity < max_sanity)
		curr_sanity += i_rate
}
else
{
	
	if(curr_sanity > 0)
		curr_sanity -= d_rate
}
#endregion
