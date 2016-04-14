if stun = false 
{
    dir = sign(global.active_character.x - x)
    hsp = dir * movespeed
    sprite_index = run_anim
    image_speed = .167
    if (distance_to_object(global.active_character) >= 94) 
        {
        state = e_state.special;
        }
    

    if (distance_to_object(global.active_character) > 128) state = e_state.patrol;
}
