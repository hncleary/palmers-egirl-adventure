/// @description Draw menu item instance

// Draw Main Sprite
if(main_sprite != sEmpty) { 
	if(hovering) { 
		draw_sprite_ext(main_sprite, 0, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_black, shadow_a);
	}
	draw_sprite_ext(main_sprite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
}
// Draw Sub Sprite
if(sub_sprite != sEmpty) { 
	if(hovering) { 
		draw_sprite_ext(sub_sprite, 0, x, y + 150, image_xscale * .55, image_yscale * .6, image_angle, c_black, shadow_a);
	}
	draw_sprite_ext(sub_sprite, 0, x, y + 150, image_xscale * .5, image_yscale * .5, image_angle, image_blend, 1);
}
