

//hurt enemy
x += 10;


//if player is dead
if (health <= 0)
{
	e_state = STATE.dead;
}
else 
{
	e_state = STATE.roaming;
}