//Controls the attacking animation and damage values(not yet implemented)
image_speed = 0.5
sprite_index = sprite_attack_slash;
/* Don't need to repeat this code
if (obj_inventory.selected_item == "sword")
{
    if(image_index >= 1) && (image_index <= 3)
    {
        with(instance_create(x,y, obj_sword_hitbox))
        {
            image_xscale = other.image_xscale;
        }
    }
}*/
//if (obj_inventory.selected_item == "bow") not nessecary?
//{
    if(image_index >= 1) && (image_index <= 3)
    {
    if(can_att == 1)
    {
        can_att = 0;
        with(instance_create(x,y,asset_get_index("obj_" + obj_inventory.selected_item + "_hitbox")))
            {
                
                if(obj_inventory.selected_item == "bow" && obj_bow_hitbox.alarm[0] != 0)
                {
                    obj_bow_hitbox.alarm[0] = 30;
                }
                image_xscale = other.image_xscale;
            }
        }
    }
//}

scr_collision();

