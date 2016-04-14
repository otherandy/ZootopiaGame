if (active = true)
{
key_right = (keyboard_check(ord("D")))
key_left = (-keyboard_check(ord("A")))
key_jump = (keyboard_check_pressed(vk_space)) || (keyboard_check_pressed(ord("W")))
key_jump_held = (keyboard_check(vk_space)) || (keyboard_check(ord("W")))
key_sneak = (keyboard_check(vk_control)) || (keyboard_check(ord("S")))
}
else 
{
key_right = 0
key_left = 0
key_jump = 0
key_jump_held = 0
key_sneak = 0
hsp = 0
}
//react to input

move = key_left + key_right;
if (move > 0) && (walljump = false) && (canmove)
    {hsp = (movespeed * slow)
    }
if (move < 0) && (walljump = false) && (canmove)
    {hsp = (-movespeed * slow)
    }
if ((keyboard_check(ord("A"))) && (keyboard_check(ord("D"))))
    { hsp = 0
    }
if ((hsp < 0) && (!keyboard_check(ord("A"))) && (!keyboard_check(ord("D"))) &&  (place_meeting(x,y+1,obj_collide_parent))) 
    {hsp += fric;
    }
    else if (hsp < 0) && (!keyboard_check(ord("A"))) && (!keyboard_check(ord("D"))) && (!place_meeting(x,y+1,obj_collide_parent))
    {hsp += airfric;
    }
if ((hsp > 0) && (!keyboard_check(ord("A"))) && (!keyboard_check(ord("D"))) && (place_meeting(x,y+1,obj_collide_parent))) 
    {hsp -= fric;
    }
    else if (hsp > 0) && (!keyboard_check(ord("A"))) && (!keyboard_check(ord("D"))) && (!place_meeting(x,y+1,obj_collide_parent))
    {hsp -= airfric;
    }
if (vsp < 10) vsp += grav;
if (key_sneak)
    {sneak = true
    fric = .02
    }
else
    {sneak = false
    fric = .2
    }
//jump collision
if (place_meeting(x,y+1,obj_collide_parent))
{
    vsp = key_jump * -jumpspeed
}

if (key_jump) && (place_meeting(x+1,y,obj_collide_parent)) && (!place_meeting(x,y+1,obj_collide_parent))  
{
    vsp = -jumpspeed
    hsp = -4
    move = -1
    walljump = true
    counter = 15;
}
if (key_jump) && (place_meeting (x-1,y,obj_collide_parent)) && (!place_meeting(x,y+1,obj_collide_parent))
{
    vsp = -jumpspeed
    hsp = 4
    move = 1
    walljump = true
    counter = 15;
}
if counter > 0
    {
    counter --;
    }
else
    {
    walljump = false
    }
if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-1.5)
//horizontal collision
if (place_meeting(x+hsp,y,obj_collide_parent))
{
    while(!place_meeting(x+sign(hsp),y,obj_collide_parent))
    {
        x += sign(hsp);
    }
    hsp = 0;
    {if !sneak
        { if (keyboard_check(ord("A"))) || (keyboard_check(ord("D")))
            {
            vsp = 1.5
            sprite_index = spr_JudyHangRight
            image_speed = .15
            grab = true
            }
        else
            {
            grab = false
            }
        }
    }
}
else
    {
    grab = false
    }
//vertical collision
if (place_meeting(x,y+vsp,obj_collide_parent))
{
    while(!place_meeting(x,y+sign(vsp),obj_collide_parent))
    {
        y += sign(vsp);
    }
    vsp = 0;
} 
if (place_meeting(x,y-1,obj_collide_parent))
{
    if (place_meeting(x,y,obj_collide_parent))
    {
        //hsp = image_xscale * -1
    }
}
x += hsp;
y += vsp;


//animation code n' stuff
if (move != 0) image_xscale = move;
if (place_meeting(x,y+1,obj_collide_parent))
{
    if (move != 0) 
    {sprite_index = spr_JudyRunRight
    image_speed = .167
    }
    else 
    {sprite_index = spr_JudyIdleRight
    image_speed = .1
    }
}
else
{
    if (vsp < 0) 
        {sprite_index = spr_JudyJumpRight
        image_speed = .1
        }
    if (vsp > 0) && (grab = false)
        { sprite_index = spr_JudyFallRight
        image_speed = .167
        }
}
if (sneak = true)
    { sprite_index = spr_JudySneakRight
    image_speed = .1
    if hsp > 0
        {
        canmove = false
        move = 0
        hsp -= fric
        }
    if hsp < 0 
        {
        canmove = false
        move = 0
        hsp += fric
        }
    if hsp = 0
        {
        canmove = true
        slow = .25
        }
    else
        {
        slow = 1
        }
    }
else
    {
    slow = 1
    canmove = true
    }
if (keyboard_check_pressed(ord("K"))) && (active = true) && (attack = false)
    {
    state = states.combat
    hsp = image_xscale * 10
    attack = true
    counter1 = 20
    }
