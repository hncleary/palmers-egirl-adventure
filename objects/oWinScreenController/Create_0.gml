
testing_mode = false;

left_side_range = [75, 500];
right_side_range = [room_width - 800, room_width - 75];

heart_side = side.right;
heart_delay = 10;
heart_counter = 0;

function spawnHeart()
{ 
	if(heart_side == side.left)
	{
		// spawn heart on the left side
		heartCreate(left_side_range[0], left_side_range[1]);
	} else { 
		// spawn a heart on the right side
		heartCreate(right_side_range[0], right_side_range[1]);
	}
}

// Spawn a heart object in a random x position within the param range
function heartCreate(x1, x2) 
{
	var xpos = irandom_range(x1, x2);
	instance_create_depth(xpos, room_height + 100, 100, oHeart);
}

audio_stop_all();
audio_play_sound(light, 10, true);