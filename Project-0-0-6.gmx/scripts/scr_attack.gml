//Controls the attacking animation and damage values(not yet implemented)
image_speed = 0.5

sprite_index = sprite_attack_slash;

if (weapon_type == 001)
{
    if(image_index >= 1) && (image_index <= 3)
    {
        with(instance_create(x,y, obj_sword_hitbox))
        {
            image_xscale = other.image_xscale;
        }
    }
}
if (weapon_type == 002)
{
    if(image_index >= 1) && (image_index <= 3)
    {
        with(instance_create(x,y,obj_arrow_hitbox))
        {
            if(obj_arrow_hitbox.alarm[0] = -1)
            {
                obj_arrow_hitbox.alarm = 5;
                image_xscale = other.image_xscale;
            }
        }
    }
}



