//dialogue goes here
if Talk_0
    {
    scr_textbox("Judy: Quit staring! We've got a job to do! ",1,0,0,snd_voicehigh)
    talking = 1
    sprite_index = spr_JudyTalkRight
    image_speed = .1
    }
if  Talk_1
    {
    scr_textbox("Judy: Seriously, we can do this all you want#after work, Nick. ",1,0,0,snd_voicehigh)
    talking = 2
    sprite_index = spr_JudyTalkRight
    image_speed = .1
    }
if Talk_2
    {
    scr_textbox("Judy: Nick... ",1,0,0,snd_voicehigh)
    talking = 100
    sprite_index = spr_JudyTalkRight
    image_speed = .1
    }
if Talk_1_Cont
    {
    scr_textbox("Nick: Alright! Alright! Jeez Carrots, it's 
kinda hard to get my eyes off you! ",1,0,0,snd_voicemed)
    talking = 200
    sprite_index = spr_JudyIdleRight
    image_speed = .1
    with (obj_NickWilde)
        {
        sprite_index = spr_NickTalkRight
        image_speed = .167
        }
    }
if Talk_2_Cont
    {
    scr_textbox("Judy: We'll bang okay? Just wait! ",1,0,0,snd_voicehigh)
    talking = 0
    sprite_index = spr_JudyTalkRight
    image_speed = .1
    with (obj_NickWilde)
        {
        sprite_index = spr_NickIdleRight
        image_speed = .167
        }
    }
