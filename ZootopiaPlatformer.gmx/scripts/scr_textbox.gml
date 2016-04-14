//scr_text("Text",speed,x,y,sound);

txt = instance_create(argument2,argument3,obj_text)
with (txt)
{
    padding = 4
    maxlength = 284
    text = argument0;
    spd = argument1;
    font = fnt_textbox;
    snd = argument4
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2), maxlength);
    text_height = string_height_ext (text,font_size+(font_size/2), maxlength);  
}
