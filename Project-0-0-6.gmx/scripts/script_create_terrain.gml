///Create Terrain
maxlength = floor(room_width);
maxdist = 10;
maxy = floor(room_height)-320;
//miny = floor(room_height);
height_change = 32;


randomize(); //Randomizes random() at game reset

for(x = 1; x < maxlength; x += 1) 
{
    //Randomize X terrain distance
    maxdist = floor(random(10)+1);
    //Change height every maxdist
    if (x mod maxdist == 1)
    {
        //Randomly decide up or down
        rndH = floor(random(2));
        
        //Check if floor height change needs to be smooth
        if (rndH == 0 || rndH == 1) {height_change = 16}
        else {height_change = 32;}
        
        //Randomly choose terrain height
        if (maxy < 1920-32) {
            //if 0 move terrain lower
            if (rndH == 0) {maxy -= height_change;}
            //if 1 move terrain higher
            if (rndH == 1) {maxy += height_change;}
        }
        else {maxy -= 32;}
    }
    var block_grass = instance_create((x*32)-16,maxy,obj_terrain);
    block_grass.sprite_index = sprite_ground_grass;
    var block_mud = instance_create((x*32)-16,maxy+32,obj_terrain);
    block_mud.sprite_index = sprite_ground_mud;
}
