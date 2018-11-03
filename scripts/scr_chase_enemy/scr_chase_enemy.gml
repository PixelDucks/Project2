
//DEBUGGING
//show_debug_message("In state chase");

//Switch to roaming if player is no longer detected
if (distance_to_object(oPlayer) > 150)
{
	e_state = STATE.roaming;
	show_debug_message("No Longer Detecting Player");
}

//In range to attack
if (distance_to_object(oPlayer) < 50)
{
	speed = 0;
	direction = 0;
	if (cool_down <= 0) {
		show_debug_message("Going to attack");
		e_state = STATE.attacking;	
		cool_down = 3 * room_speed;
	}
	else {
		show_debug_message("Cooling down");
		cool_down--;
	}
}
else
{
	//Chase Player
	move_towards_point(oPlayer.x, oPlayer.y, 2); 
}