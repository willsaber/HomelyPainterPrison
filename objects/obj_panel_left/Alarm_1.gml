/// @description Slide back in
if instance_exists(obj_tiles_layers) {
	with obj_tiles_layers {
		instance_destroy();
	}
}

obj_subpanel_left.panelHeight = 0;

moveToX = global.tempXLeft;
moveToSpd = (global.tempXLeft - room_width) / 6;
moveDirection = 1;
scrollHorPartition = 0;
scrollVerPartition = 0;
