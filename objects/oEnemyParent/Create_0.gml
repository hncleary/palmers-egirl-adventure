hp = 5;
image_speed = 0;
image_index = 0;
mover = true;
enemy_dead = false;
destroy_countdown = 30;
function enemyDie() { 
	if(!enemy_dead) {
		audio_play_sound(enemy_pain, 10, false);
		enemy_dead = true;
	}
}
