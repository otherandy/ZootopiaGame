hsp = 0
sprite_index = idle_anim
image_speed = .167

//switch states
if (distance_to_object(global.active_character) < 96) state = e_state.chase;
