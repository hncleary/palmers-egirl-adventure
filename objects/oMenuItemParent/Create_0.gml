/// @description display item on main menu

enum clickSounds { 
	none,
	confirm,
	back
}

main_sprite = sEmpty;
sub_sprite = sEmpty;

clickable = false;
hovering = false;
shadow_a = .3;

onlyGrowOnHover = false;
clicked = false;

maxScale = .4;
minScale = .39;

scaleStepValue = .01;


maxRotation = 3;
rotStepVal = random_range(.0041378, .0044378);

tGrowing = true;
tRotatingCW = true;

smoothStepVal = 0; // value between 0 and 1 that determines position in slerp() function
smoothStepValRot = 0;

sound = clickSounds.none;
actionPerformed = false;


function updateScale() { 
	val = smoothstep(0, 1, smoothStepVal);
	image_xscale = (val * scalediff()) + minScale;
	image_yscale = (val * scalediff()) + minScale;
}

function updateRotation() { 
	val = smoothstep(0, 1, smoothStepValRot);
	image_angle = (val * maxRotation) - (maxRotation / 2 );
}

function addSmoothStepVal(num) {
	smoothStepVal += num;
}

function addSmoothStepValRot(num) {
	smoothStepValRot += num;
}

function scalediff() { 
	return maxScale - minScale;
}

function leftClickRelease() {
	show_debug_message("No function defined");
}
