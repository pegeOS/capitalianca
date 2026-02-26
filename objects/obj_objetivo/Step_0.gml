
show_debug_message("y: " + string(y))
show_debug_message("y max: " + string(y_max))
show_debug_message("y min: " + string(y_min))


//vai subindo
y += 0.1

if(y <= y_max){

	y += 0.5

}
else if(y >= y_min){

	y -= 0.5

}