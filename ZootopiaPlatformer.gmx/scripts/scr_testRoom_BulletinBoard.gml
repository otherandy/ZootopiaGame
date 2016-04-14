//dialogue goes here
//test room dialogue
if Talk_0
    {
    scr_textbox("Why hello there! I am a bulletin board. ",1,0,0,snd_voicethought)
    talking = 100
    }
if Talk_1_Cont
    {
    scr_textbox("There are currently two types of dialogue implemented. ",1,0,0,snd_voicethought)
    talking = 200
    }
if Talk_2_Cont
    {
    scr_textbox("Dialogue that continues through multiple boxes, like this... ",1,0,0,snd_voicethought)
    talking = 300
    }
if Talk_3_Cont 
    {
    scr_textbox("And dialogue that only lasts one box. ",1,0,0,snd_voicethought)
    talking = 400
    }
if Talk_4_Cont
    {
    scr_textbox("While talking, the game pauses, and you can skip my dialogue by hitting 'R'. ",1,0,0,snd_voicethought)
    talking = 500
    }
if Talk_5_Cont
    {
    scr_textbox("It took a long time to implement, so appreciate it. ",.5,0,0,snd_voicethought)
    talking = 600
    }
if Talk_6_Cont
    {
    scr_textbox("Skip ALL THE DIALOGUE SO MY WORK IS WORTH IT!!! ",0.125,0,0,snd_voicethought)
    talking = 0
        {with (obj_NickWilde)
            {
            sprite_index = spr_NickTalkRight
            image_speed = .167
            }
        }
    }
//end test room dialogue
