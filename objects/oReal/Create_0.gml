/// @description 

damage = 25;
hit_bonus = .15; //extra bonus damage?

detection_radius = 30;

enum STATE 
{
	roaming,
	chase,
	attacking,
	hurt,
	dead
}

e_state = STATE.roaming;

move_hold = 0;
mv_speed = 0;

cool_down = 0; //3 seconds between attacks

#region Sanity
effectedPlayer = false
insanityEnemy = 10
#endregion