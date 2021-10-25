/// time to move one row down
//show_debug_message("turn")

yspd = 0
turning = 1
hdir = -hdir
image_xscale = -image_xscale
if hdir > 0{
	image_angle = 0
}else{
	image_angle = 180	
}
//show_debug_message("xspd = " + string(xspd))
//show_debug_message("yspd = " + string(yspd))
//show_debug_message("hdir = " + string(hdir) )