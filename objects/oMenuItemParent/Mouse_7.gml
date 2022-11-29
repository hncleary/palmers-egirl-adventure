/// @description  Activate menu item function if set to clickable
if(clickable) { 
	if(!actionPerformed) { 
		switch(sound) {
			case clickSounds.confirm:
				//audio_play_sound(sndConfirm, 1, false);
				break;
			case clickSounds.back:
				//audio_play_sound(sndBack, 1, false);
				break;
			default:
				break;
		}
	
		actionPerformed = true;
		clicked = true;
		alarm[0] = 15;
	}
}




