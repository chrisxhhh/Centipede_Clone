
globalvar LIVE;
LIVE = 3;
globalvar POINT;
POINT = 0;
globalvar LEVEL; //centipede increases speed when LEVEL up
LEVEL = 1; 
globalvar DEAD_ENEMY;
DEAD_ENEMY = 0;

//every time game restart, gamemaker have the same sequence of random number
//this line randomise these numbers
randomise()

last_pos_x = 24
last_pos_y =24
for(var j = 0; j < 27; j++){
	for (var i = 0; i < 24; i++){
		//for every possible mushroom respawn point,
		//there is 1/10 chance respawn, this dice help choose the position
		dice = irandom_range(0,20)
		show_debug_message(string(dice))
	
		if dice == 0{
			instance_create_layer(last_pos_x,last_pos_y,"player",obj_mushroom)
			
		}
		last_pos_x += 17
		
	}
	last_pos_y += 16
	last_pos_x = 24
	//obj_mushroom.image_blend = COLOR
}

globalvar COLOR;
COLOR = obj_mushroom.image_blend;





