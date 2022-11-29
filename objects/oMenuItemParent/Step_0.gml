/// @description Create slerp motion for menu display items

// If auto slerp grow and shrink
if(!onlyGrowOnHover) {
	if((tGrowing)) { 
		addSmoothStepVal(scaleStepValue);
	} else {
		addSmoothStepVal(-scaleStepValue);
	}

	if(smoothStepVal >= 1) {
		tGrowing = false;
	}
	if(smoothStepVal <= 0) {
		tGrowing = true;
	}
} else if(!clicked) {
	// on hover grow and shrink
	if((hovering && smoothStepVal < 1)) { 
		addSmoothStepVal(scaleStepValue * 4);
	}
	if((!hovering && smoothStepVal > 0)) { 
		addSmoothStepVal(-scaleStepValue * 4);
	}
} else {
	if((tGrowing)) { 
		addSmoothStepVal(scaleStepValue * 20);
	} else {
		addSmoothStepVal(-scaleStepValue * 20);
	}

	if(smoothStepVal >= 1) {
		tGrowing = false;
	}
	if(smoothStepVal <= 0) {
		tGrowing = true;
	}
}

if(tRotatingCW) { 
	addSmoothStepValRot(rotStepVal);
} else {
	addSmoothStepValRot(-rotStepVal);
}

if(smoothStepValRot >= 1) {
	tRotatingCW = false
}
if(smoothStepValRot <= 0) {
	tRotatingCW = true;
}

updateScale();
updateRotation();
