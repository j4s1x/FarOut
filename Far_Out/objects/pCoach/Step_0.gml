//define variables

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space);

var move = right - left; //lets say we press right

hsp = move * walksp; // so 0 = (1-0) * 4 which equals 4...
//later on we say then that x = x + hsp...which is what we defined

vsp = vsp + grv

if (place_meeting(x,y+1,oBlock1)) and (jump)
{
	vsp = -12;
}


//end movement
//now collissions

//if (place_meeting(x,y+1,sBlock1)) vsp = -10 later for jumping

if (place_meeting(x + hsp,y,oBlock1))
{
	while (!place_meeting(x+sign(hsp),y,oBlock1))
	{
		x = x +sign(hsp);
	}
	
	hsp = 0;
}

if (place_meeting(x,y+vsp,oBlock1))
{
	while (!place_meeting(x,y+sign(vsp),oBlock1))
	{
		y = y +sign(vsp);
	}
	
	vsp = 0;
}
//change animations according to direction and if moving or not
if (!place_meeting(x,y+1,oBlock1))
{
	sprite_index = sCoachJLg
	image_speed = 0
	if (sign(vsp) > 0) image_index = 8 ; else image_index = 1;
}
else
{
	image_speed = 1;
	if (hsp = 0) sprite_index = sCoachLg;
	else
	{
		sprite_index = sCoachALg;
	}
}
if (hsp != 0) image_xscale = sign(-hsp);
//jumping and animation


y = y + vsp
x = x + hsp;