//dialogue goes here
if (talk > 2) then talk=0;

switch (talk) {
    case 0: scr_addString("Judy: Quit staring! We've got a job to do!", 4, snd_voicehigh);
            break;
    case 1: scr_addString("Judy: Seriously, we can do this all you want# after work, Nick.", 4, snd_voicehigh);
            break;
    case 2: scr_addString("Judy: Nick...", 4, snd_voicehigh);
            scr_addString("Nick: Alright! Alright! Jeez Carrots, it's kinda hard to get my eyes off you!", 4, snd_voicemed);
            scr_addString("Judy: We'll bang okay? Just wait!", 4, snd_voicehigh);
            break;
    default:break;
}
scr_dialogueInitDefault();
