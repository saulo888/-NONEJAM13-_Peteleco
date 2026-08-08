if colocar then
	instance_create_depth(mouse_x, mouse_y, 10, peca_atual, 
	{
	phy_rotation: rotacao
	})
if obj_Area.mouseArea then {	
	if petelecar then
	{
	    var raio = 100;
	    var peca = instance_nearest(mouse_x, mouse_y, obj_Peca_P);

	    if (peca != noone)
	    {
	        var dist = point_distance(mouse_x, mouse_y, peca.x, peca.y);

	        if (dist <= raio)
	        {
	            var dir = point_direction(mouse_x, mouse_y, peca.x, peca.y);

	            with (peca)
	            {
	                var impulso = 7;

	                physics_apply_impulse(
	                    mouse_x,
						mouse_y,
	                    lengthdir_x(impulso, dir),
	                    -lengthdir_y(impulso, dir)
	                );
	            }
	        }
	    }
	}
}
