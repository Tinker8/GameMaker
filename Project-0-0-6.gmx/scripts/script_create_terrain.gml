///Create Terrain

//Ini Variables
maxlength = floor(room_width);

//Default Biome
maxdist = 10;
maxy = floor(room_height)-320;
//miny = floor(room_height);
height_change = 32;

//Biome Stuff
//Types: Fields, Hills, Mountains, Desert, Tundra (snow), Heaven, Hell.
//surface = "Flat"; Flat, Hills, Extreme Hills
//caves = false;

//Setup empty array
for (i = 0; i < 2; i++)
{
    for (j = 0; j < 7; j++)
    {
        global.biomeArray[i,j] = 0;
    }
}

biomeArray[0,0] = "Fields"; //Name
biomeArray[0,1] = "Flat"; //SurfaceType
biomeArray[0,2] = false; //Caves no
biomeArray[0,3] = 10; //maxdist x
biomeArray[0,4] = floor(room_height)-320; //max y
biomeArray[0,5] = 32; //Height
biomeArray[0,6] = floor(random(1)); //Elevation 50/50

biomeArray[1,0] = "Hills"; //Name
biomeArray[1,1] = "Hills"; //SurfaceType
biomeArray[1,2] = true; //Caves yes
biomeArray[1,3] = 5; //maxdist x
biomeArray[1,4] = (floor(room_height)-120); //max y
biomeArray[1,5] = 128; //Height
biomeArray[1,6] = floor(random(2)); //Elevation

randomize(); //Randomizes random() at game reset
biomeSelect = 1;
for(x = 1; x < maxlength; x += 1) 
{
    //Randomize X terrain distance
    maxdist = floor(random(biomeArray[biomeSelect,3])+1);
    //Change height every maxdist
    if (x mod maxdist == 1)
    {
        //Randomly decide up or down
        rndH = biomeArray[biomeSelect,6];
        
        //Check if floor height change needs to be smooth
        if (rndH == 0 || rndH == 1)
        {
            height_change = 16}
        else {
            height_change = 32;
        }
        
        //Randomly choose terrain height
        if (maxy < 1920-32) {
            //if 0 move terrain lower
            if (rndH == 0) {maxy -= height_change;}
            //if 1 move terrain higher
            if (rndH > 0) {maxy += height_change;}
        }
        else {maxy -= 32;}
    }
    var block_grass = instance_create((x*32)-16,maxy,obj_terrain);
    block_grass.sprite_index = sprite_ground_grass;
    var block_mud = instance_create((x*32)-16,maxy+32,obj_terrain);
    block_mud.sprite_index = sprite_ground_mud;
}

/*
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
}*/
