//Collide and move
//Allows player to walk up steps
if (place_meeting(x+hsp,y,obj_terrain) && !place_meeting(x+hsp,y-16,obj_terrain)) {y -= 8;}

//Vertical speed
vsp += 0.2;

//Horizontal Collision/Wall Collision
if (place_meeting(x+hsp,y,obj_terrain))
{

    while(!place_meeting(x+sign(hsp),y,obj_terrain))
    {
    
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_terrain))
{
    while(!place_meeting(x,y+sign(vsp),obj_terrain))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

//Updates where current item is (held by player)
//THIS NEEDS TO STAY AFTER COLLISION
held_item.x = x;
held_item.y = y;