// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function spr_dialogo(texto, min_vel, max_vel){
	if(indice < string_length(texto[idx])) {
		if(!keyboard_check(vk_enter))
			indice+=min_vel;
		else
			indice+=max_vel;
		show_debug_message(indice)
	}else {
		if(idx < array_length(texto)-1){
			if(keyboard_check_pressed(vk_enter)){
				idx++;
				indice = -5;
			}
		}else {
			if(keyboard_check_pressed(vk_enter)){
				event = false;
			}
		}
	}
		
	var _texto = string_copy(texto[idx],0,indice);	
	draw_set_color(c_white);
	draw_set_font(fntDialogos);
	draw_text_ext(45,115,_texto,10,200);
	draw_set_color(c_black);
}