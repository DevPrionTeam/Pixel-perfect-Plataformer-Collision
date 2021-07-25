//############################### GML ################################//
//################### Wroted by: @DevPrionTeam #######################//
//### A pixel perfect collision for plataform games in GAME MAKER. ###//
//####################################################################//

// Pixel perfect Collision checking Horizontally.
if(place_meeting(x+hsp, y, oWallsParent)){
    while !place_meeting(x+sign(hsp), y, oWallsParent){
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// Pixel perfect Collision checking Vertically [Not Jump_Throught Walls].
if(place_meeting(x, y+vsp, oWallsParent)){
    while !place_meeting(x, y+sign(vsp), oWallsParent){
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// Ground checking bugfix [Not Jump_Throught Walls].
if(place_meeting(x ,y+1, oWallsParent)){
    ground = 1;
}else{
    ground = 0;
}

// Stuck on walls from below bugfix [Not Jump_Throught Walls].
if(place_meeting(x ,y-1, oWallsParent)){
    ground = 0;
    vsp = 1;// Pulls the player down. 
}