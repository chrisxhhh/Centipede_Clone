

//movement
#region
hspd = 0
vspd = 0
if keyboard_check(vk_left){
	hspd -= 2.5
}
if keyboard_check(vk_right){
	hspd += 2.5
}
if keyboard_check(vk_up){
	vspd -= 2
}
if keyboard_check(vk_down){
	vspd += 2	
}


x += hspd
y += vspd
show_debug_message(string(x))

if (x > room_width-4 or x < 4){
		x = clamp(x, 4, room_width-4);
	}
if (y > room_height-4 or y < room_height/4*3+4){
		y = clamp(y, room_height/4*3+4, room_height-4);
	}

#endregion

	
//shoot
if load == true and keyboard_check_pressed(vk_space){
	obj_bullet.shoot = true
	load = false
}