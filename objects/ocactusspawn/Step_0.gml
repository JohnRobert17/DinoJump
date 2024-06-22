/// @description Insert description here
// You can write your code in this editor


spawnTimer -= 10

if (spawnTimer <= 0)
{
	if(random_range(0, 100) > 25)
	{
		instance_create_layer(x, y, "Instances", oCactus, { twin: false})
		spawnTimer = random_range(800, 2000)
	}
	else
	{
		instance_create_layer(x + sprite_height/2, y + sprite_width/2, "Instances", oCactus, { twin: true})
		spawnTimer = random_range(100, 300)
	}
}