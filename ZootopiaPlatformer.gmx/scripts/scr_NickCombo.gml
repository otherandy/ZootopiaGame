if (mouse_check_button_pressed(1)) && (attack = false)
    {
    if sneak = true && (hsp > 0 || hsp < 0)
        {
        hsp = image_xscale * 6
        state = states.combat
        attack = true
        counter1 = 45
        image_index = 0
        }
    }
