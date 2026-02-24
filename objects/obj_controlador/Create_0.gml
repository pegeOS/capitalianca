



troca = function(){
	
	//input da troca
	var _troca = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(vk_tab)
	
	//se apertou pt=ra trocar, 
	if(_troca){
			
		//objeto atual que a camera ta seguindo
		var _atual = camera_get_view_target(view_camera[0])
			
		//setar a camera na troca de acordo com o objeto atual que ta no target
		if(obj_player_pobre == _atual){
			camera_set_view_target(view_camera[0], obj_player_rico)
		}
		else{
			camera_set_view_target(view_camera[0], obj_player_pobre)
		}
		
	}
}