sprite_index = spr_NickFlipRight
if hsp > 0
    {
    hsp --;
    }
if hsp < 0
    {
    hsp ++;
    }
if counter1 > 0 
    {
    counter1 --
    }
else if counter1 = 0 && (place_meeting(x,y+1,obj_collide_parent))
    {
    state = states.normal
    attack = false
    }

if (place_meeting(x+hsp,y,obj_collide_parent))
{
    while(!place_meeting(x+sign(hsp),y,obj_collide_parent))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
if (vsp < 10) vsp += grav;
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
    if (place_meeting(x,y+1,obj_collide_parent))
    {
        hsp = image_xscale * -4
    }
}
x += hsp;
y += vsp;


