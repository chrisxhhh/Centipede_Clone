
//show_debug_message(string(x))
//show_debug_message("xspd = " + string(xspd))
//show_debug_message("yspd = " + string(yspd))
//show_debug_message("hdir = " + string(hdir))
//show_debug_message()
//show_debug_message("alarm = " + string(alarm[0])+ "\n\n")

if x <= 6 or x >= room_width-6 or place_meeting(x,y,obj_mushroom){
	//xspd = 0
	x = clamp(x, 6, room_width-6);
	
	if alarm[0] == -1{
		//show_debug_message(string(x))
		image_angle = 270
		turning = 0
		alarm[0] = 8
	}
}

if y >= room_height-6 or y <= 6{
	vdir = -vdir
	
}
xspd = hdir * 3 * turning * LEVEL
yspd = vdir * 2 * abs(turning-1) * LEVEL

x += xspd
y += yspd