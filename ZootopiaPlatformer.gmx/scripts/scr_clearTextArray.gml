// Clears the dialogue array
global.text_offset = 0;
for (i=0; i<MAX_TEXT; i++) {
    global.text[i,TEXT.STRING] = "";
    global.text[i,TEXT.SPEED] = 0;
    global.text[i,TEXT.VOICE] = noone;
}
