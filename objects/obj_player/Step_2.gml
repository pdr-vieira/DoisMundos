/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//sistema de colisao horizontal e movimentação horizontal
repeat (abs(velh))
{
	var _velh = sign(velh);
	
	//subindo a rampa
	if (place_meeting(x+_velh, y, obj_colisao) && !place_meeting(x+_velh, y-1, obj_colisao))
	{
		y--;
	}
	
	//descendo a rampa
	if (!place_meeting(x+_velh,y,obj_colisao) && !place_meeting(x+_velh,y+1,obj_colisao) && place_meeting(x+_velh,y+2,obj_colisao))
	{
		y++;
	}
	
	//checando se vai bater na parede
	if (place_meeting(x + _velh, y, obj_colisao))
	{
		//se for bater, para
		velh = 0;
		//interrompe o laço de repetição
		break;
	}
	else
	{
		//mover horizontalmente
		x += _velh;
	}
}

//sistema de colisao vertical e movimentação vertical
repeat (abs(velv))
{
	var _velv = sign(velv);
	
	//checando se vai bater na parede
	if (place_meeting(x, y + _velv, obj_colisao))
	{
		//se for bater, para
		velv = 0;
		//interrompe o laço de repetição
		break;
	}
	else
	{
		//mover verticalmente
		y += _velv;
	}
}


#region PARALLAX
	if (velh > 0)
	{
		if (layer_exists("Background_1"))
		{
			layer_hspeed("Background_1", -.05);
		}
		if (layer_exists("Background_1B"))
		{
			layer_hspeed("Background_1B", -.05);
		}
		
		
		if (layer_exists("Background_2"))
		{
			layer_hspeed("Background_2", -.08);
		}
		if (layer_exists("Background_2B"))
		{
			layer_hspeed("Background_2B", -.08);
		}
		
		
		if (layer_exists("Background_3"))
		{
			layer_hspeed("Background_3", -.1);
		}
		if (layer_exists("Background_3B"))
		{
			layer_hspeed("Background_3B", -.1);
		}
		
	
		if (layer_exists("Background_4"))
		{
			layer_hspeed("Background_4", -.3);
		}
		if (layer_exists("Background_4B"))
		{
			layer_hspeed("Background_4B", -.3);
		}
		
	
		if (layer_exists("Background_5"))
		{
			layer_hspeed("Background_5", -.5);
		}
		if (layer_exists("Background_5B"))
		{
			layer_hspeed("Background_5B", -.5);
		}
	}
	else if (velh < 0)
	{
		if (layer_exists("Background_1"))
		{
			layer_hspeed("Background_1", .05);
		}
		if (layer_exists("Background_1B"))
		{
			layer_hspeed("Background_1B", .05);
		}
		
		
		if (layer_exists("Background_2"))
		{
			layer_hspeed("Background_2", .08);
		}
		if (layer_exists("Background_2B"))
		{
			layer_hspeed("Background_2B", .08);
		}
		
		
		if (layer_exists("Background_3"))
		{
			layer_hspeed("Background_3", .1);
		}
		if (layer_exists("Background_3B"))
		{
			layer_hspeed("Background_3B", .1);
		}
		
	
		if (layer_exists("Background_4"))
		{
			layer_hspeed("Background_4", .3);
		}
		if (layer_exists("Background_4B"))
		{
			layer_hspeed("Background_4B", .3);
		}
		
	
		if (layer_exists("Background_5"))
		{
			layer_hspeed("Background_5", .5);
		}
		if (layer_exists("Background_5B"))
		{
			layer_hspeed("Background_5B", .5);
		}
	}
	else
	{
		if (layer_exists("Background_1"))
		{
			layer_hspeed("Background_1", 0);
		}
		if (layer_exists("Background_1B"))
		{
			layer_hspeed("Background_1B", 0);
		}
		
		
		if (layer_exists("Background_2"))
		{
			layer_hspeed("Background_2", 0);
		}
		if (layer_exists("Background_2B"))
		{
			layer_hspeed("Background_2B", 0);
		}
		
		
		if (layer_exists("Background_3"))
		{
			layer_hspeed("Background_3", 0);
		}
		if (layer_exists("Background_3B"))
		{
			layer_hspeed("Background_3B", 0);
		}
		
	
		if (layer_exists("Background_4"))
		{
			layer_hspeed("Background_4", 0);
		}
		if (layer_exists("Background_4B"))
		{
			layer_hspeed("Background_4B", 0);
		}
		
	
		if (layer_exists("Background_5"))
		{
			layer_hspeed("Background_5", 0);
		}
		if (layer_exists("Background_5B"))
		{
			layer_hspeed("Background_5B", 0);
		}
	}
#endregion