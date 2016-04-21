//dialogue goes here
if (talk > 3) then talk=0;

switch (talk)
{
    case 0: scr_addString("Nick: How's it hanging, Hopps?", 4, snd_voicemed);
            break;
    case 1: scr_addString("Nick: I know I'm good looking, but you don't#have to stare!", 4, snd_voicemed);
            break;
    case 2: scr_addString("Nick: Carrots, I know that hog over there scares your fuzzy-wuzzy tail off, ", 4, snd_voicemed);
            scr_addString("Nick: but Ol' Nicky needs you to be a big girl now!", 4, snd_voicemed);
            break;
    case 3: scr_addString("Nick: Seriously though. Do I need to take care of the big bad for you?", 4, snd_voicemed);
            scr_addString("Nick: I just ate, and you know what they say...", 4, snd_voicemed);
            scr_addString("Judy: No, I don't know Nick. What DO they say?", 4, snd_voicehigh);
            scr_addString("Nick: I was betting on you not asking that.", 4, snd_voicemed);
            break;
    default:break;
}
scr_dialogueInitDefault();
