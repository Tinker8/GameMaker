scr_getinputs(); //Duplication if already used in state


//What weapon it is
/*
Test for any key selection
item
if(any_key)
{
    held_item.sprite_index = (asset_get_index("sprite_" + item))
    obj_inventory.selected_item = item;
}*/

if(key_one)
{
    weapon_type = 001; //Setting weapon to sword
    held_item.sprite_index = sprite_sword; //Need to find better way to to this, like match array index (obj_char code)
    obj_inventory.selected_item = "sword"; //same as above code?
}
else if (key_two)
{
    weapon_type = 002; //Setting weapon to bow
    held_item.sprite_index = sprite_bow;
    obj_inventory.selected_item = "bow";
}


//if(global.weaponselect = 1 && global.equipped = 0)
//{
//sword = instance_create(x,y+100,obj_items)
//held_item.sprite_index = sprite_sword;
//sword.depth = -1000;
//global.equipped = 1;
//}

