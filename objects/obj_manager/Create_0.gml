



last_pos_x = 8
last_pos_y = 8
for (var i = 0; i < 12; i++){
	var instance = instance_create_layer(last_pos_x, last_pos_y, "player", obj_centipede)
	if (i == 0){
		instance.sprite_index = spr_centi_head
	}
	last_pos_x += 14
	
}

