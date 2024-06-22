/// @description Insert description here
// You can write your code in this editor

key_left = 0;
key_right = 0;
key_jump = 0;


if(keyboard_check(vk_space)) 
{
	healthPoint = 3;
	image_speed = 1;
}

if (healthPoint > 0)
{
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check(vk_up);
}

yVelocity += grv;


//vertical collision 
if(place_meeting(x, y + yVelocity, oSolid))
{
	if (key_jump)
	{
		yVelocity = -30;
	}
	else
	{
		while(!place_meeting(x, y + sign(yVelocity), oSolid))
		{
			y = y + sign(yVelocity);
		}
		yVelocity = 0;
	}
}

y = y + yVelocity;

// Horizontal

var playerDiretion = key_right - key_left;

if (healthPoint > 0) 
{
	xVelocity = playerDiretion * playerSpeed;
	xVelocity -= 2;
}
else if (xVelocity <= -10) xVelocity = -10
else if (yVelocity == 0) xVelocity -= 0.5
x += xVelocity;



if (place_meeting(x, y, oCactus) && invulnerabilityCount <= 0) 
{
	healthPoint -= 1;
	invulnerabilityCount = 60;
	if (yVelocity > 0) yVelocity -= 30;
}
if (invulnerabilityCount >= 1) 
{
	invulnerabilityCount -= 1; 
	if ((invulnerabilityCount%3) == 0 && healthPoint > 0) visible = !visible
}

//Sprite Behaviour
if (healthPoint > 0)
{
	if(yVelocity > 0) sprite_index = DinoDown
	else if(yVelocity < 0) sprite_index = DinoUp
	else
	{
		if(xVelocity < 5) sprite_index = DinoWalk
		else sprite_index = DinoRun
	}
}
else 
{
	if(image_index > 6) image_speed = 0
	else if(yVelocity == 0) image_speed = 1;
	else if(image_index > 2) image_speed = 0;
	sprite_index = DinoDead
}