//Instances
instance_create(x,y,obj);
for(x=1;x<500;x++) {var block = instance_create(x*32,320,obj_terrain);}

/*
if (idle)
{
    //reset position/walk bk
    if (distance_to_object(obj_char) < 80) enemy.chase = 1;
}
if (chase)

    //run after player
    dir = sign(obj_char.x - x;
    hsp = dir * 2; //movespeed
    
    vsp = (min(7,vsp+0.05)); //gravity?
    
    if (distance_to_object(obj_char) > 100) enemy.idle = 1;

*/
