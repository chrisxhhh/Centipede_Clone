//acc += 0.1
if shoot{
	if y < 0 {
		instance_destroy()	
	}

	if place_meeting(x,y,obj_mushroom){
		
		var hit = instance_place(x,y,obj_mushroom)
		instance_destroy()
		if hit.image_index < 3{
			hit.image_index += 1
		}else{
			instance_destroy(hit)
			POINT += 10
		}
	}

	if place_meeting(x,y,obj_centipede){
		POINT += 100
		DEAD_ENEMY += 1
		var hit = instance_place(x,y,obj_centipede)
		centi_x = hit.x
		centi_y = hit.y
		
		//move a bit to make all mushroom lined up perfectly
		if (centi_x - 24) / 17 - floor((centi_x - 24) / 17) < 0.5{
			centi_x = floor((centi_x - 24) / 17) * 17 + 24
		}else{
			centi_x = floor((centi_x - 24) / 17) * 17 + 24 + 17
		}
		centi_y = floor((centi_y - 24) / 16) * 16 + 24
		instance_destroy(hit)
		var new_mush = instance_create_layer(centi_x,centi_y,"player",obj_mushroom)
		new_mush.image_blend = COLOR
		instance_destroy()
	}
}