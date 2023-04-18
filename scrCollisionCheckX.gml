/// scrCollisionCheckX(colider);
col = argument0;

// Physic with UpHills until 45°degrees detection  
if(place_meeting(x+hsp, y, col)){

    yplus = 0;
    while(place_meeting(x+hsp, y-yplus, col) && yplus <= abs(1*hsp)){
        yplus++;
    }
    if(place_meeting(x+hsp, y-yplus,col)){
        while(!place_meeting(x+sign(hsp), y, col)){
            x += sign(hsp);
        }
        hsp = 0;
    }else{
        y -= yplus;
    }
}
x+=hsp;
