if (mouse_check_button_pressed(1)) && (attack = false)
    {
    if sneak = true && (hsp > 0 || hsp < 0)
        {
        hsp = image_xscale * 5
        state = states.combat
        attack = true
        counter1 = 40
        image_index = 0
        }
    }
