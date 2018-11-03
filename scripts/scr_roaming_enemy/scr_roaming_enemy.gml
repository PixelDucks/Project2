
//DEBUGGING
//show_debug_message("In state roaming");

//Switch to chase if player is close enough
if (distance_to_object(oPlayer) < 150)
{
	e_state = STATE.chase;
	show_debug_message("Detected Player");
}

#region Enemy roaming
var move = irandom_range(0,4);

if (move_hold == 0) 
{
	switch(move) 
	{
	  case 0: // No move
	     speed = 0;
	     move_hold = 1;
	     break;
	case 1: // move right
		speed = 1;
		direction = 0;
		move_hold = 1;
		break;
	case 2: //move up
		speed = 1;
		direction = 90;
		move_hold = 1;
		break;
	case 3: // move left
		speed = 1;
		direction = 180;
		move_hold = 1;
		break;
	case 4: // move down
		speed = 1;
		direction = 270;
		move_hold = 1;
		break;
	}
} else {
	move_hold += 1;
	// Hold for 3 seconds
	if (move_hold == 3 * room_speed) {
		// end hold
		move_hold = 0;
	}
}

#region Collisions
#endregion

#endregion

