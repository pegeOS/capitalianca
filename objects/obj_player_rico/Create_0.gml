//variaveis de movimento
velh = 0;
velv = 0;

vel = 4;



move = function(){
	
	//pegando os inputs
	var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	
	//aplicando os inputs na velocidade se o player pobre for o target da camera
	if(camera_get_view_target(view_camera[0]) == object_index){
		velv = (_down - _up) * vel;
		velh = (_right - _left) * vel;
	}
	else{
		velv = 0
		velh = 0
	}
	
	move_and_collide(velh, velv, global.colisoes)
}