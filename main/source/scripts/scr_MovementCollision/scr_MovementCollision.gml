/****************\
*  Aidan Davis	 *
*      Aidan     *
\****************/
if (place_meeting(x + xSpeed * getDeltaTime, y, obj_Wall))
{
	while !place_meeting(x + sign(xSpeed), y, obj_Wall)
	{
		x += sign(xSpeed);
	}
	
    xSpeed = 0;		
}

if (place_meeting(x, y + ySpeed * getDeltaTime, obj_Wall))
{
	while !place_meeting(x, y + sign(ySpeed), obj_Wall)
	{
		y += sign(ySpeed);
	}
	
	ySpeed = 0;
}



if (place_meeting(obj_Interact.x + xSpeed * getDeltaTime, obj_Interact.y, obj_Wall))
{
	while !place_meeting(obj_Interact.x + sign(xSpeed), obj_Interact.y, obj_Wall)
	{
		if (obj_Input.INTERACT == true) 
		{
			global.state = scr_Talk;
		}
		else
		{
			global.state = scr_PlayerMovement;
		}	
	}
}

if (place_meeting(obj_Interact.x, obj_Interact.y + ySpeed * getDeltaTime, obj_NPC))
{
	while !place_meeting(obj_Interact.x, obj_Interact.y + sign(ySpeed), obj_NPC)
	{	
		if (obj_Input.INTERACT == true) 
		{
			global.state = scr_Talk;
		}
		else
		{
			global.state = scr_PlayerMovement;
		}
	}
}