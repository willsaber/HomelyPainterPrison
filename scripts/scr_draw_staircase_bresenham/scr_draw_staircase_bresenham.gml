/// scr_draw_staircase_bresenham( x1, y1, x2, y2)
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];

var dx = abs(x2 - x1);
 var sx = (x1 < x2) ? 1 : -1;
var dy = -abs(y2 - y1);
var sy = (y1 < y2) ? 1 : -1;
var err = dx + dy;
var e2;

var xPol = x1 > x2; // Leftward line if true.
var yPol = y1 > y2; // Downward line if true.

var inc = 0;

while (true) {
	inc++;
	if inc > 40 { break; }
	
	draw_rectangle(x1, y1, x1, y1, false);
	
	if
	( ( x1 >= x2 && !xPol ) || ( x1 < x2 && xPol ) )
	&& ( ( y1 >= y2 && yPol ) || ( y1 < y2 && !yPol ) )
	{
		break;
	}
	
	e2 = 2 * err;

	if e2 >= dy {
		err += dy;
		x1 += sx;
	}
	
	if e2 <= dx {
		err += dx;
		y1 += sy;
	}
}
