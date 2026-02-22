/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//sistema de colisao horizontal e movimentação horizontal
repeat (abs(velh))
{
	var _velh = sign(velh);
	
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


