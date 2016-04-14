if stun = false
{
    hsp = dir * movespeed;
    sprite_index = run_anim
    image_speed = .167

    if (place_meeting(x+hsp,y,obj_collide_parent)) || (place_meeting(x+hsp,y,obj_enemy_parent))
    {
    dir *= -1
    }

    if (distance_to_object(global.active_character) < 96) state = e_state.chase;   
    
}
