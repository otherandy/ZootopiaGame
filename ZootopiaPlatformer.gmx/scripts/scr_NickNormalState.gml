active = ((global.active_character==obj_NickWilde) && (!global.dialogue));

//get player input
if active
{
    //TODO: key binding option
    key_right = (keyboard_check(ord("D"))) || (keyboard_check(vk_right));
    key_left = (keyboard_check(ord("A"))) || (keyboard_check(vk_left));
    key_jump = (keyboard_check_pressed(vk_space)) || (keyboard_check_pressed(ord("W")));
    key_jump_held = (keyboard_check(vk_space)) || (keyboard_check(ord("W")));
    key_sneak = (keyboard_check(vk_control)) || (keyboard_check(ord("S"))) || (keyboard_check(vk_down));
    key_dialogue = 0;
}
else
{
    key_right = 0;
    key_left = 0;
    key_jump = 0;
    key_jump_held = 0;
    key_sneak = 0;
    key_dialogue = (keyboard_check_pressed(ord("E")));
    hsp = 0;
}

//react to input
move = (key_left | key_right) & !(key_left & key_right);
if move then movedir = (key_left * -1) + (key_right * 1);
if (!walljump) && (canmove) && (move) then hsp = (movespeed * slow) * movedir;
else if ((hsp > 0) && (movedir==1)) || ((hsp < 0) && (movedir==-1))
{
    if (place_meeting(x,y+1,obj_collide_parent)) then hsp -= fric * movedir;
    else hsp -= airfric * movedir;
}
else hsp=0;

if (vsp < 10) then vsp += grav;

if (key_sneak)
{
    if (grab) then vsp = .5;
    else sneak = true;
    fric = .02;
}
else
{
    if (grab) then vsp = 0;
    else sneak = false;
    fric = .2;
}

//jump collision
if (place_meeting(x,y+1,obj_collide_parent)) then vsp = key_jump * -jumpspeed;

if (key_jump) && (!grab)
{
    if (place_meeting(x+1,y,obj_collide_parent)) && (!place_meeting(x,y+1,obj_collide_parent))  
    {
        vsp = -.2;
        hsp = -4;
        movedir = -1;
        walljump = true;
        counter = 15;
    }
    if (place_meeting (x-1,y,obj_collide_parent)) && (!place_meeting(x,y+1,obj_collide_parent))
    {
        vsp = -.2;
        hsp = 4;
        movedir = 1;
        walljump = true;
        counter = 15;
    }
}

if counter > 0 then counter --;
else walljump = false;

if (key_jump_held) && (grab) then vsp = -.5;
if (vsp < 0) && (!key_jump_held) then vsp = max(vsp,-1.5);

//horizontal collision
if (place_meeting(x+hsp,y,obj_collide_parent))
{
    while(!place_meeting(x+sign(hsp),y,obj_collide_parent))
    {
        x += sign(hsp);
    }
    hsp = 0;
    if (!sneak)
    {
        if (move)
        {
            //vsp = 0;
            sprite_index = spr_NickHangRight;
            image_speed = .15;
            grab = true;
        }
        else grab = false;
    }
}
else grab = false;

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
    if (place_meeting(x,y,obj_collide_parent)) || (!place_meeting(x,y,obj_enemy_parent))
    {
        //hsp = image_xscale * -1
    }
}

x += hsp;
y += vsp;

//animation code n' stuff
image_xscale = movedir;
if (place_meeting(x,y+1,obj_collide_parent))
{
    if (move) 
    {
        sprite_index = spr_NickRunRight;
        image_speed = .167;
    }
    else 
    {
        sprite_index = spr_NickIdleRight;
        image_speed = .167;
    }
}
else
{
    if (!grab)
    {
        if (vsp < 0)
        {
            sprite_index = spr_NickJumpRight;
            image_speed = .167;
        }
        if (vsp > 0)
        {
            sprite_index = spr_NickFallRight;
            image_speed = .167;
        }
    }
}

if (sneak)
{
    sprite_index = spr_NickSneakRight;
    image_speed = .1;
    slow = .5;
    if hsp <> 0
    {
        canmove = false;
        move = false;
        hsp -= fric * movedir;
        slow = 1;
    }
    else
    {
        canmove = true;
        slow = .5;
    }
}
else
{
    slow = 1;
    canmove = true;
}

if (global.dialogue) then sprite_index = spr_NickTalkRight;
else if (key_dialogue) && (hsp+vsp == 0) then state = states.talk;

if (keyboard_check_pressed(ord("K"))) && (active) && (!attack)
{
    state = states.combat;
    hsp = image_xscale * 15;
    attack = true;
    counter1 = 30;
}
