switch (room)
{
    case rm_testRoom:
        if (!active) && (place_meeting(x,y,global.active_character)) then scr_testRoom_Judy();
        break;
    default:
        break;
}
state = states.normal;
talk++;
