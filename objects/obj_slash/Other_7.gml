
//trava no ultimo frame
image_index = image_number - 1

//se fica invisivel demais, se destroi
if(image_alpha <= 0.25) instance_destroy()