/// scrCollisionCheckY(colider);
col = argument0;

// Physic
if(place_meeting(x, y+vsp, col)){
    while(!place_meeting(x, y+sign(vsp), col)){
        y += sign(vsp);
    }
    vsp = 0;
}
y+=vsp;

// Downhills
if !place_meeting(x,y,col) && vsp >= 0 && place_meeting(x,y+2+abs(hsp),col)
{while(!place_meeting(x,y+1,col)) {y += 1;}}
