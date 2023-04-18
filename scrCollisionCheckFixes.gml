/// scrCollisionCheckFixes(collider_obj);
col = argument0;

// Fix for jumping
if(place_meeting(x, y-1, col)){
    vsp = 1;
    grounded = 0;
}

// Fix triggering grounded
if(place_meeting(x, y+1, col)){
    grounded = 1;// grounded
    if(times == 1) {audio_play_sound(sfxFootNormal1,1,0); times = 0}
}else{
    grounded = 0;// not grounded
    times = 1;
}
