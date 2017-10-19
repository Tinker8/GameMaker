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
    held_item.sprite_index = sprite_sword; //Need to find better way to to this, like match array index (obj_char code)
    obj_inventory.selected_item = "sword"; //same as above code?
}
else if (key_two)
{
    held_item.sprite_index = sprite_bow;
    obj_inventory.selected_item = "bow";
}

