
global.loja = false

atual = 0

itens = []

//adicionando no array
array_push(itens, ["tabua", 30, " Construa o seu caminho"])
array_push(itens, ["espada", 50, " Elimine quem voce precisar eliminar! "])
array_push(itens, ["tocha", 70, " Ilumine a sua caminhada"])

//numero de itens
quant = array_length(itens)

//GUI
gui_width = display_get_gui_width()
gui_height = display_get_gui_width()

menu_width = gui_width * 0.3
menu_margin = gui_width * 0.3

largura = (gui_width - (menu_width + menu_margin))



