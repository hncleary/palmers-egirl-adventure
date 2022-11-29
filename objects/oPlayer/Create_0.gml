hspd = 0;
vspd = 0;
walkspd = 4;

function killPlayer() { 
	audio_stop_all();
	audio_play_sound(pain, 10, false);
	room_goto(dead);
}

function collectCoin() {
	global.coins += 1;
	audio_play_sound(coin, 10, false);
}

function playerCharge() {
	audio_play_sound(charge, 10, false);
}

function playerDab() {
	show_debug_message("dabbed");
	
	audio_stop_sound(charge);
	
	audio_play_sound(dab, 10, false);

	with (instance_create_layer(x,y,layer,oBigBullet))
	{
		direction = point_direction(x,y,mouse_x,mouse_y);
		speed = 3;
	}
}

function playerBasicShoot() { 
	audio_play_sound(shoot, 10, false);
	with (instance_create_layer(x,y,layer,oBullet))
	{
		direction = point_direction(x,y,mouse_x,mouse_y);
		speed = 6;
	}
}