//se a camera nao tiver no player pobre, nao desenhar
if( camera_get_view_target(view_camera[0]) != object_index){
	exit
}


//y pra cada slot
var _y = 300

//desenha o 1 slot
inventario = draw_sprite_ext(spr_inv, 0, 45, _y, 2, 2, 0, c_white, 0.8)

//pra cada item no inventario
for(var i = 0; i < array_length(global.inventario); i++){

	//pegando a sprite do item atual
	var _spr_itens = asset_get_index("spr_icone_" + global.inventario[i]);
	
	//desenha a sprite do item
	var _item = draw_sprite_ext(_spr_itens, 0, 45, _y - 2, 2.2, 2.2, 0, c_white, 1);
	
	//aumenta o y
	_y += 60
	
	//desenha mais um espaco
	var _espaco = draw_sprite_ext(spr_inv, 0, 45, _y, 2, 2, 0, c_white, 0.8)

}

