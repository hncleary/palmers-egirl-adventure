/// @description Insert debug drawing for main menu controller

if(testing_mode)
{
	draw_set_alpha(.7);
	draw_set_colour(c_blue);
	draw_rectangle(left_side_range[0], 0, left_side_range[1], room_height, true);
	draw_rectangle(right_side_range[1], 0, right_side_range[0], room_height, true);
}