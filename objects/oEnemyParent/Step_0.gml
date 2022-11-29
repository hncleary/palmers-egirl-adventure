if(mover && !enemy_dead) {
	x = x + lengthdir_x(1.5, point_direction(x,y,oPlayer.x,oPlayer.y));
	y = y + lengthdir_y(1.5, point_direction(x,y,oPlayer.x,oPlayer.y));
}

if (hp = 5) image_index = 0;
if (hp = 4) image_index = 1;
if (hp = 3) image_index = 2;
if (hp = 2) image_index = 3;
if (hp = 1) image_index = 4;
if (hp <=0) {
	enemyDie();
}

if(enemy_dead) {
	image_index = 4;
	destroy_countdown -= 1;
	if(destroy_countdown <= 0) {
		score += 1;
		instance_destroy();
	}
}
