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
		scr_hurt_enemy();
		break;
	case STATE.dead:
		instance_destroy(self);
		break;
}

if(e_state == STATE.attacking || e_state == STATE.chase)
	global.enemyAttacking = true
else
	global.enemyAttacking = false

#region Reduce Player Insanity
if(instance_exists(oPlayer) && !effectedPlayer)
{
	if(e_state == STATE.attacking)
		{
			oPlayer.curr_sanity -= insanityEnemy
			effectedPlayer = true
		}
}
#endregion
