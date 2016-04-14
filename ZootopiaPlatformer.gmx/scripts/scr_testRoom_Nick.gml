//dialogue goes here
if Talk_0
    {
    scr_textbox("Nick: How's it hanging, Hopps? ",1,0,0,snd_voicemed)
    talking = 1
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
if Talk_1
    {
    scr_textbox("Nick: I know I'm good looking, but you don't#have to stare! ",1,0,0,snd_voicemed)
    talking = 2
    sprite_index = spr_NickSwaggerRight
    image_speed = .25
    }
if Talk_2
    {
    scr_textbox("Nick: Carrots, I know that hog over there scares your fuzzy-wuzzy tail off, ",1,0,0,snd_voicemed)
    talking = 100
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
if Talk_1_Cont
    {
    scr_textbox("Nick: but Ol' Nicky needs you to be a big girl now! ",1,0,0,snd_voicemed)
    talking = 3
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
if Talk_3
    {   
    scr_textbox("Nick: Seriously though. Do I need to take care of the big bad for you? ",1,0,0,snd_voicemed)
    talking = 200
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
if Talk_2_Cont
    {
    scr_textbox("Nick: I just ate, and you know what they say...  ",1,0,0,snd_voicemed)
    talking = 300
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
if Talk_3_Cont
    {
    scr_textbox("Judy: No, I don't know Nick. What DO they say? ",1,0,0,snd_voicehigh)
    talking = 400
    with (obj_JudyHopps)
        {
        sprite_index = spr_JudyTalkRight
        image_speed = .1
        }
    sprite_index = spr_NickIdleRight
    image_speed = .167
    }
if Talk_4_Cont
    {
    scr_textbox("Nick: I was betting on you not asking that. ",1,0,0,snd_voicemed)
    talking = 0
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
    


    

