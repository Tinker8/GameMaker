//Controls the attacking animation and damage values(not yet implemented)
image_speed = 0.5
sprite_index = sprite_attack_slash;

if(image_index >= 1) && (image_index <= 3) //What does this do? nothing???
{
    if(can_att == 1)
    {
        can_att = 0;
        var ID;
        ID = instance_create(x,y,asset_get_index("obj_" + obj_inventory.selected_item + "_hitbox"));
                
        if(obj_inventory.selected_item == "bow")
        {
            ID.hspeed = image_xscale * 5;
        }
        ID.image_xscale = other.image_xscale;
        
    }
}

//scr_collision();
