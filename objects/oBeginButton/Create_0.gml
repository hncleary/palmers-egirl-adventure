/// @description create event for begin button (game start button from main menu)

event_inherited();
depth = 0;

main_sprite = sBeginButton;

maxScale = 2.0;
minScale = 1.95;
clickable = true;
onlyGrowOnHover = true;


function leftClickRelease() {
	audio_stop_all();
	audio_play_sound(select, 10, false);
	audio_play_sound(current, 10, true);
	room_goto(level1);
}