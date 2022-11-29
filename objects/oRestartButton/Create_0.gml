/// @description restart button for game

event_inherited();
depth = 0;

main_sprite = sRestart;

maxScale = 2.6;
minScale = 2.5;
clickable = true;
onlyGrowOnHover = true;


function leftClickRelease() {
	audio_stop_all();
	audio_play_sound(select, 10, false);
	room_goto(start_screen);
}