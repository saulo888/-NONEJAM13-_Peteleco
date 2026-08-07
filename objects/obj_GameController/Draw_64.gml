if colocar then
	draw_sprite_ext(spr_peca_atual, 0, mouse_x, mouse_y, spr_peca_atual.image_xscale, spr_peca_atual.image_yscale, -rotacao, c_white, 50)
else
	draw_circle(mouse_x, mouse_y, 15, 1)