/// @description

#region Draw Insanity Bar
sbar_width = 192
sbar_height = 32 
sbar_position = [32, 676]


draw_rectangle(sbar_position[0], sbar_position[1], 
	sbar_position[0] + (sbar_width * curr_sanity/max_sanity), 
	sbar_position[1] + sbar_height, false)
// Outline
draw_set_color(make_color_rgb(41, 21, 0))
draw_rectangle(sbar_position[0], sbar_position[1], 
	sbar_position[0] + sbar_width, 
	sbar_position[1] + sbar_height, true)
draw_set_color(c_white)

#endregion
