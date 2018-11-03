if (show_inv)
{
	x1 = camera_get_view_x(view_camera[0]);
	y1 = camera_get_view_y(view_camera[0]);
	x2 = x1 + camera_get_view_width(view_camera[0]);
	y2 = y1 + camera_get_view_height(view_camera[0]);
	
	draw_set_color(c_black);
	draw_rectangle(x1,y1,x2,y2,false);
	draw_sprite(sFabric, 0, x1, y1);
	
	draw_text_transformed(x1, y1, "Inventory", 3, 3, 0);
	
	for(i = 0; i < maxItems; i += 1)
	{
		draw_sprite_ext(sInv_border, 0, (x1 + 10 + (i * 200)), (y1 + 90), 2, 2, 0, c_white, 1);
		
		if (inventory[i] != -1)
		{
			draw_sprite_ext(sInv_item, inventory[i], (x1 + 10 + (i * 200)), (y1 + 90), 2, 2, 0, c_white, 1);
		}
	}
}