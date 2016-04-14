if (place_meeting(x,y,global.active_character))
    {
    if (global.active_character.attack) = true
    {
        stun = true
        counter = 300;
        sprite_index = stun_anim
        image_speed = .167
        hsp = 0
        }
        else
        {
        if (global.active_character.y < y-32)
        {
            if stun = true
            {
            with (global.active_character) 
                {
                vsp = (-jumpspeed);
                
                }
            
            sprite_index = hit_anim
            state = e_state.dead
            }
            else
            {
            with (global.active_character) 
                {
                vsp = (-jumpspeed)
                hsp = image_xscale * 4
                }
            }
        }
        else if stun = false
        {
            if (global.active_character).hp = 0
            {
                game_restart()
            }
               
        }
    }
}


if counter != 0
    {
    counter --;
    }
if counter = 0
    {
    stun = false
    }
if specialcounter != 0
    {
    specialcounter --;
    }
if specialcounter = 0 && (state = e_state.special)
    {
    state = e_state.patrol
    dir = sign(global.active_character.x - x)
    }
