
//se nao ta na loja, nao desenha
if(!global.loja) exit

draw_set_font(fnt_loja)

//retanguulos pretos
draw_set_color(c_black)
	draw_set_alpha(0.8)
		draw_rectangle(0, 0, gui_width, gui_height, 0);
	draw_set_alpha(0.5)
		draw_rectangle(100, 0, menu_margin, gui_height, 0);
	draw_set_alpha(1)
draw_set_color(c_white)

// escrevendo os itens
for(var i = 0; i < quant; i++){
	
	//item
	var _item = itens[i][0]
	
	//posição
	var _x = menu_margin - 138
	var _y = (gui_height/5) + (i - atual)*96
	
	//escala
	var _escala = 2;
	if(i == atual) _escala = 2.5
	
	
	//setinha
	if(i == atual) _item = "> " + _item + " <";
	
	//desenhando
	draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
			draw_text_transformed(_x, _y, _item, _escala, _escala, 0);
		draw_set_valign(fa_top)
	draw_set_halign(fa_left)

}

//variavel produto é igual ao item atual
var _produto = itens[atual]

//item, preco e descricao
var _item = _produto[0]
var _preco = _produto[1]
var _desc = _produto[2]

//posicao de desenhar a sprite
var _x = menu_margin + menu_width
var _y = gui_height/4

//desenhando a sprite
var _spr = asset_get_index("spr_item_" + _item);

if(sprite_exists(_spr)){
	
	var escala = 8
	
	draw_sprite_ext(_spr, 0, _x, _y - 24, escala, escala, 0, -1, 1)
}


//desenhando a descrição
draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
		draw_text_transformed(_x, _y + 300, _desc, 2, 2, 0)
	draw_set_valign(fa_top)
draw_set_halign(fa_left)

