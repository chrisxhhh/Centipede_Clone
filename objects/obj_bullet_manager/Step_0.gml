if obj_player.load = false{
	instance_create_layer(obj_player.x-2,obj_player.y-10,"bullet",obj_bullet)	
	obj_player.load = true
}