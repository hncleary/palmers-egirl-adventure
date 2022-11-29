if (hp <=0) {
	audio_play_sound(enemy_pain, 10, false);
	score += 1;
	instance_destroy();
}
if(shoot_countdown <= 0) {
	shootBullet();
	shoot_countdown = irandom_range(30, 60);
} else { 
	shoot_countdown -= 1;
}