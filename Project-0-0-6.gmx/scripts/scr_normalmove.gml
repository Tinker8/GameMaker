scr_getinputs();

held_item.x = x;
held_item.y = y;

//Just control movements
move = (key_right + key_left);
hsp = movespeed * move;

//Vertical speed
vsp += 0.2;

//Control the speed of the image
image_speed = 0.25;


//Gravity for jumping
if (vsp < 10) vsp += grav;

//Resets the number of jumps when the character hits the ground
if (place_meeting(x,y+1,obj_terrain))
{
    jump_limit = 2;
    jumping = 0;
}

//Idle animation
if(hsp == 0 && !key_down && jump_limit ==2)
{
    sprite_index = sprite_idle;
}

//Crouching animation and reduce speed to 0 when crouched
if(key_down && hsp == 0)
{
    sprite_index = sprite_crouch;
    hsp = 0;
}

//Movement animation
if(hsp != 0 && jumping != 1)
{
    sprite_index = sprite_walking;
}

//Jumping mechanics
if(key_jump && jump_limit > 0)
{
    vsp = key_jump * -jumpspeed;
    jump_limit --;
    sprite_index = sprite_jump;
    jumping = 1;
}

//Controls reverse images
if (move != 0) 
{
    image_xscale = move;
    held_item.image_xscale = move;
}

scr_collision(); 
