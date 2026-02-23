/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		max_jump++;
	}
	instance_destroy();
}


#region rotação
//altera a frequência da onda
var _girox = (get_timer()/1000000) * 2;
//tamanho
image_xscale = sin(_girox);

//faz subir e descer
//altera a frequência da onda
var _onday = (get_timer()/1000000) * 5;
//tamanho
y += sin(_onday);
#endregion