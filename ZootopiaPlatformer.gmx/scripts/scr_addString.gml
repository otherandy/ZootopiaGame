// Pushes a new entry into the dialogue database
// src_addString(text, speed, voice)
var str = argument0;
var spd = argument1;
var voice = argument2;
var offset = global.text_offset;

if offset < MAX_TEXT {
    global.text[offset,TEXT.STRING] = argument0;
    global.text[offset,TEXT.SPEED] = argument1;
    global.text[offset,TEXT.VOICE] = argument2;
    global.text_offset++;
}
