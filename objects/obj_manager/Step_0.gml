

// craete a new bullet for player after shoot
if obj_player.load = false and !obj_player.die{
	instance_create_layer(obj_player.x-2,obj_player.y-10,"bullet",obj_bullet)	
	obj_player.load = true
}

if DEAD_ENEMY == 12{
	last_pos_x = 16
	last_pos_y = 8
	for (var i = 0; i < 12; i++){
		var instance = instance_create_layer(last_pos_x, last_pos_y, "player", obj_centipede)
		if (i == 0){
			instance.sprite_index = spr_centi_head
		}
		last_pos_x += 14
	}	
	DEAD_ENEMY = 0;
	LEVEL += 0.2
	COLOR = make_colour_hsv(irandom_range(150,255), irandom_range(150,255), irandom_range(150,255));
	obj_mushroom.image_blend =  COLOR
	
}