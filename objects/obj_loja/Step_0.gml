
//se nao tiver na loja, colidir com o player e apertar E, entra na loja
if(!global.loja && place_meeting(x, y, obj_player_rico) && keyboard_check_pressed(ord("E"))){

	global.loja = true
}
//se ele tiver na loja e apertar ESC, sai da loja
else if(global.loja && keyboard_check_pressed(vk_escape)){

	global.loja = false
}



//se ta na loja
if(global.loja){
	//se apertar pra baixo o item atual muda pro proximo
	if(keyboard_check_pressed(vk_down)){
		atual++
		
		//se o atual tiver o indice igual ao tamanho da array, reinicia
		if(atual == quant) atual = 0 
	}


	//se apertar pra cima o item atual muda pro anterior
	if(keyboard_check_pressed(vk_up)){
		atual--
		
		//se o atual tiver o indice menor que 0, vai pro ultimo
		if(atual < 0) atual = quant - 1
	}

}
