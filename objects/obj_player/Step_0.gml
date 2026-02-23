 
//movimento
var _chao = place_meeting(x, y+1, obj_colisao);
var _espinho = place_meeting(x, y+1, obj_espinho);

//debug
chao = _chao

var _jump = keyboard_check_pressed(ord("W"));
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));

//resetar a quantidade de pulos
if(_chao)
{
	max_jump = qtd_jump;
	image_speed = 1;
}
else
{
	//aplica a gavidade
	velv += gravidade;
}

//movimentação
velh = (_right - _left) * max_velh;


//pulando
if (_jump && max_jump > 0)
{
	velv = -max_velv/1.5;
	max_jump--;
	
	//trocando para a sprite do pulo
	sprite_index = spr_player_jump;
	image_index = 0;
	if (image_index <= 1 && velv < 0)
	{
		image_speed = 0;
	}
}

//limitando a velocidade máxima da queda
velv = clamp(velv, -max_velv, max_velv);


//verificando colisão com o espinho
if(_espinho)
{
	instance_destroy();
}

#region troca sprite
//olhar para o lado certo
if (velh != 0)
{
	image_xscale = sign(velh);
}
else
{
	image_xscale = image_xscale;
}

//sprite andando
if (velh != 0 && _chao)
{
	sprite_index = spr_player_walk;
}

//sprite parado
if (velh = 0 && velv = 0)
{
	sprite_index = spr_player_idle;
}

//sprite caindo
if (sprite_index = spr_player_jump && velv >= 0)
{
	 if (sprite_index < image_number-1)
	 {
		image_speed = 1;
	 }
	 else
	 {
		image_speed = 0;
	 }
}

#endregion





