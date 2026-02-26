
//ajustando medidas
image_xscale *= 1.5
image_yscale *= 1.4

//criando o range que o player tera que ficar para poder botar tabua
range = instance_create_layer(x, y, "colisoes", obj_range)

//ajustando medidas
range.image_xscale *= 1.5
range.image_yscale *= 0.5

pronto = false
