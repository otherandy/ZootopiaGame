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
    scr_textbox("Nick: *SMUG INTENSIFIES* ",1,0,0,snd_voicemed)
    talking = 3
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
if Talk_3
    {
    scr_textbox("Nick: I don't know, I'm not good at dialogue, man! ",1,0,0,snd_voicemed)
    talking = 4
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
if Talk_4
    {
    scr_textbox("Nick: Hey, Carrots. Anything particularly boring about this place? ",1,0,0,snd_voicemed)
    talking = 100
    sprite_index = spr_NickTalkRight
    image_speed = .167
    }
if Talk_1_Cont
    {
    scr_textbox("Judy: I was told this was just a test room. So it makes sense there's nothing in it. ",1,0,0,snd_voicehigh)
    talking = 200
    sprite_index = spr_NickIdleRight
    with obj_JudyHopps
        {
        sprite_index = spr_JudyTalkRight
        image_speed = .1
        }
    }
if Talk_2_Cont
    {
    scr_textbox("Nick: Who told you that? ",1,0,0,snd_voicemed)
    talking = 300
    sprite_index = spr_NickTalkRight
    image_speed = .167
    with obj_JudyHopps
        {
        sprite_index = spr_JudyIdleRight
        image_speed = .1
        }
    }
if Talk_3_Cont
    {
    scr_textbox("Judy: I... wait, that's weird, I don't remember. ",1,0,0,snd_voicehigh)
    talking = 400
    sprite_index = spr_NickIdleRight
    image_speed = .167
    with obj_JudyHopps
        {
        sprite_index = spr_JudyTalkRight
        image_speed = .1
        }
    }
if Talk_4_Cont
    {
    scr_textbox("Nick: It's like we just popped into existence like characters in a video game. ",1,0,0,snd_voicemed)
    talking = 500
    sprite_index = spr_NickSwaggerRight
    image_speed = .25
    with obj_JudyHopps
        {
        sprite_index = spr_JudyIdleRight
        image_speed = .1
        }
    }
if Talk_5_Cont
    {
    scr_textbox("Judy: Something is compelling me to tell you to send all dialogue complaints to TuxRug. ",1,0,0,snd_voicehigh)
    talking = 600
    sprite_index = spr_NickIdleRight
    image_speed = .167
    with obj_JudyHopps
        {
        sprite_index = spr_JudyTalkRight
        image_speed = .1
        }
    }
if Talk_6_Cont
    {
    scr_textbox("Nick: Huh! Weird. ",1,0,0,snd_voicemed)
    talking = 0
    sprite_index = spr_NickTalkRight
    image_speed = .167
    with obj_JudyHopps
        {
        sprite_index = spr_JudyIdleRight
        image_speed = .1
        }
    }   

