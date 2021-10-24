xspd = hdir * 2 * turning

x += spd
y += yspd * vdir

if x <= 16 or x >= room_width-16{
	//spd = 0
	yspd = 2
	turning = 0
	alarm[0] = 8
	hdir = -hdir
	image_xscale = -image_xscale
}
