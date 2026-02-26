
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
	var _y = (gui_height/4) + (i - atual)*96
	
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

//pegando a sprite do item atual
var _spr = asset_get_index("spr_item_" + _item);

//se a sprite existe, desenha ela
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


//Dinheiro
draw_sprite_ext(spr_moeda, image_index, 140, 45, 2.2, 2.2, 0, c_white, 0.9)

draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
		//quant de dinheiro
		draw_text_transformed(195, 48, global.dinheiro, 1.5, 1.5, 0)
		
		//preco do produto
		draw_text_transformed(480, 30, "Preço: " + string(_preco), 1.5, 1.5, 0)
		
		//instrução
		draw_text(gui_width - 200, 30, " - APERTE ENTER PARA COMPRAR - ")
		draw_text(gui_width - 200, 80, " - APERTE ESC PARA SAIR - ")


//reiniciando os aligns
	draw_set_valign(fa_top)
draw_set_halign(fa_left)

