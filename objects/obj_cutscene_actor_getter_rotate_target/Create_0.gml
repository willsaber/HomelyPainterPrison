/// @description Insert description here
relativeMouseX = 0;
relativeMouseY = 0;
timeIndex = 0;
radius = 20;
canDrag = false;
canDel = false;
gone = false;
trg = -1;

if instance_exists(obj_trigger_region_parent) {
	obj_trigger_region_parent.canDeSelect = false;
}

image_speed = 0;
