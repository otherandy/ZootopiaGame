//scr_textbox(font,color);

txt = instance_create(0,0,obj_textbox)
with (txt)
{
    font = other.argument0;
    color = other.argument1;
    font_size = font_get_size(font);
}
