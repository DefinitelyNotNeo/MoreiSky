 /// @description Movement
/****************\
*  Aidan Smith	 *
* [Leader] Smith *
\****************/

if (global.state == scr_PlayerMovement) 
{
	scr_PlayerMovement();
}

if (global.state == scr_StartBattle)
{
	room_goto(rm_Battle);	
}

//if (global.state == scr_Talk)
//{
//	scr_Talk();	
//}