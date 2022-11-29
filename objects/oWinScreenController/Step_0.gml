/// @description tick function for main menu controller

if(heart_counter <= 0) {
	// spawn a heart on the current side and then switch sides
	spawnHeart();
	// reset the heart_counter
	heart_counter = heart_delay;
} else { 
	// decrement the heart_counter
	heart_counter -= 1;
}