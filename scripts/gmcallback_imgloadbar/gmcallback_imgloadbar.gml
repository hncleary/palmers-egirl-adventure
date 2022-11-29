/// @description  gmcallback_imgloadbar(context, current, total, canvas_width, canvas_height, image_width, image_height)
/// @param context
/// @param  current
/// @param  total
/// @param  canvas_width
/// @param  canvas_height
/// @param  image_width
/// @param  image_height
function gmcallback_imgloadbar(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var r;
	var pc = argument1; // progress current
	var pt = argument2; // progress total
	var cw = argument3; // canvas width
	var ch = argument4; // canvas height
	var iw = argument5; // image width
	var ih = argument6; // image height
	switch (argument0) {
	    case "image_rect": // ([left, top, width, height] in pixels)
	        r[0] = 0;
	        r[1] = 0;
	        r[2] = 438;
	        r[3] = 438;
	        return r;
	    case "background_color": return c_black;
	    case "bar_background_color": return c_grey;
	    case "bar_foreground_color": return c_white;
	    case "bar_border_color": return $242238;
	    case "bar_width": return round(cw * 0.6);
	    case "bar_height": return 20;
	    case "bar_border_width": return 2;
	    case "bar_offset": return 25;
	}
	return undefined;
}
