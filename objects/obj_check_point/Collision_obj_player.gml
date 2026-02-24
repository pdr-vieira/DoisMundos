/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//local para reiniciar quando tiver checkpoint
obj_control.restart_x = x;
obj_control.restart_y = y + obj_player.sprite_height * 5;
global.checkpoint = true;


instance_destroy();