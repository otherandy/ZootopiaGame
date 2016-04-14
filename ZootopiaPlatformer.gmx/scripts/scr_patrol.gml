vsp += grav;
hsp = movespeed * dir
if stun = false
{
    if (place_meeting(x+hsp,y,obj_collide_parent)) || (place_meeting(x+hsp,y,obj_enemy_parent))
    {
    while(!place_meeting(x+sign(hsp),y,obj_collide_parent)) || (!place_meeting(x+sign(hsp),y,obj_enemy_parent))
        {
        x += sign(hsp);
        }
    dir *= -1;
    }
}
if (place_meeting(x,y+vsp,obj_collide_parent)) || (place_meeting(x,y+vsp,obj_enemy_parent))
{
    while(!place_meeting(x,y+sign(vsp),obj_collide_parent)) || (!place_meeting(x,y+vsp,obj_enemy_parent))
    {
        y += sign(vsp);
    }
    vsp = 0;
} 


