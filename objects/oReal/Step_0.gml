/// @description 

switch (e_state)
{
	case STATE.roaming:
		scr_roaming_enemy();
		break;
	case STATE.chase:
		scr_chase_enemy();
		break;
	case STATE.attacking:
		scr_attacking_enemy();
		break;
	case STATE.hurt:
	
		break;
	case STATE.dead:
		
		break;
}