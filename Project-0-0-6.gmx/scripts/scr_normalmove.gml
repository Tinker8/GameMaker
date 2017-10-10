scr_getinputs();

scr_changewep();

//Controls Movement/Speed
move = key_right + key_left;
hsp = movespeed * move;

//Vertical speed
vsp += 0.2;

//Control the speed of the image
image_speed = 0.25;


//Gravity for jumping
if (vsp < 10) vsp += grav;

//Need to add jumping to states???
//Resets the number of jumps when the character hits the ground
if (place_meeting(x,y+1,obj_terrain))
{
    jumping = 0;
    jump_limit = max_jumps;
}

//Idle animation
if(hsp == 0 && !key_down && !jumping) //Make idle state?
{
    sprite_index = sprite_idle;
    image_speed = 0.1;
}

//Crouching animation and reduce speed to 0 when crouched
if(key_down && !jumping)
{
    sprite_index = sprite_crouch;
    hsp = 0;
}

//Movement/Walking animation
if(hsp != 0 && !jumping)
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
if (move != 0) //if move is 1, images are positive (normal position), if -1, images are reversed
{
    image_xscale = move;
    held_item.image_xscale = move;
}

scr_collision();

//Updates where current item is (held by player)
//THIS NEEDS TO STAY AFTER COLLISION
held_item.x = x;
held_item.y = y;
