
//dentro do objeto de range
with(obj_range){

//se colidir com o player e apertar E e 
	if(place_meeting(x, y, obj_player_pobre) && keyboard_check_pressed(ord("E")) && array_contains(global.inventario, "tabua")){
		
		obj_tabua.image_index = 1
	
		array_pop(global.colisoes)
	}
}
