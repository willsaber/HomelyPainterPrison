/// @description Insert description here
barX = round(obj_panel_left.baseX + (sprite_get_width(spr_editor_big_button) * obj_big_button_top.scale / 2) + ((sortXMax + 1) * sprite_get_width(spr_editor_big_button) * obj_big_button_top.scale) + (6/50 * sprite_get_width(spr_editor_big_button) * obj_big_button_top.scale * (sortXMax + 2) ) - (sprite_get_width(spr_editor_big_button) * obj_big_button_top.scale / 2) );

draw_set_color(colLight);
draw_rectangle(obj_panel_left.baseX + 10,0,obj_panel_right.baseX - 11,y,false);

draw_set_color(colMid);
draw_rectangle(obj_panel_left.baseX + 10,y - 3,obj_panel_right.baseX - 11,y,false);

draw_set_color(colDark);
draw_rectangle(obj_panel_left.baseX + 10,y - 2,obj_panel_right.baseX - 11,y,false);

draw_rectangle(obj_panel_left.baseX - 2,4,obj_panel_left.baseX - 1,y - 6,false);
draw_rectangle(2 + barX,4,3 + barX,y - 6,false);
draw_rectangle(obj_panel_right.baseX - 2,4,obj_panel_right.baseX - 1,y - 6,false);

draw_set_color(barCol);
draw_rectangle(obj_panel_left.baseX,4,obj_panel_left.baseX + 1,y - 6,false);
draw_rectangle(4 + barX,4,5 + barX,y - 6,false);
draw_rectangle(obj_panel_right.baseX,4,obj_panel_right.baseX + 1,y - 6,false);

draw_set_color(outlineDark);
draw_rectangle(obj_panel_left.baseX + 10,y,obj_panel_right.baseX - 11,y,false);

draw_self();
