/*
    Wherein we try to break up with
    the antagonist.
*/

VAR in_breakup = false

== breakup ==
~ last_topic = "breakup"
~ in_breakup = true
...
{count_breakup: -> count_breakup}
What?                                   # v_breakup_what
- (what) What are you saying?           # v_breakup_what_saying
- (what_no_text)
<- silence_breakup(->what)
* I think I need to break up with you.
    Think? You _think_ you want to break up with me? What is that? What am I supposed to do with that?                # v_breakup_think
    -> what_no_text
+ I want to break up with you.
    -- (count_breakup) ...
    { count_breakup > 2 and not patterns: ->patterns }
    { count_breakup > 2: ->stage_two }
    -- (why) {stopping:
        - Why...                        # v_breakup_why
        - Why are you doing this?       # v_breakup_why_do_this
    }
    -- (whynocomment)
    ~ in_breakup = true
    <- silence_breakup(->why)
    ++ default
        -> stage_two
    ++ {not m1 or not m2} I'm {tired of being called at midnight.|tired of having my empathy abused.}
        {it: 
            - We already talked about this. # v_breakup_we_already
            -> it
        }
        Oh my God. I'm sorry. I am so so sorry. # v_breakup_stageone_oh_god_sorry
        I was just so enraptured with our conversation, I didn't realize how late it was!                                # v_breakup_stageone_enraptured
        I know your shifts are all over the place at the hospital and you're probably pooped.                             # v_breakup_stageone_shifts
        --- (forgot) I should have asked if you had to be in early tomorrow.    # v_breakup_stageone_asked_early
        --- (it)
        <- silence_breakup(->forgot)
        *** (m1) It's not just about today.
            Oh... I was-- I mean, I was just thinking back to the early days. Do you remember?           # v_breakup_thinking_back
            When we were first starting out, we would call each other at all hours of the night.          # v_breakup_stageone_first_starting
            Me to you; you to me. It was always late because we were so busy so I just assumed that...     # v_breakup_stageone_me_to_you
            I didn't know something had changed.        # v_breakup_stageone_didnt_know
            I'm sorry. I'm _so_ sorry. I really, really should have asked.  # v_breakup_stageone_sorry
            **** It's fine.
                It's--It's not fine. It's not fine.      # v_breakup_stageone_not_fine
            **** I feel like you never consider how I feel.
                You are totally right.      # v_breakup_totally_right
            **** Can we do this later?
                Carlee, I know conflict is uncomfortable.   # v_breakup_stageone_carlee_conflict
                But we need to discuss our problems and you can't just hole up and hide.   # v_breakup_stageone_need_to_discuss
                Do you want to be trapped in one bad relationship after the next just because you're too afraid to say what you want? # v_breakup_trapped
                You need me to help you.    # v_breakup_stageone_need_me
                ***** Please stop.
                    Stop what?      # v_breakup_stop_what
                    Stop caring about you? Our relationship?    # v_breakup_stop_caring
                    Stop having feelings just because you can't express yours?   # v_breakup_stop_feelings
                    Stop wanting to mend? To heal?  # v_breakup_stop_mend
                    What exactly is it you want me to stop, Carlee? # v_breakup_what_stop
                    ****** Why won't you listen to me?
                        What do you think I am doing _right now_?   # v_breakup_what_do_you
                        ******* Being a jerk.
                            -> youknow_fine
                        ******* Hurting me.
                            ...
                            You're right, Carlee.   # v_breakup_stageone_your_right_carlee
                            You're right.   # v_breakup_stageone_your_right
                            I can't believe it. # v_breakup_stageone_i_cant
                            -> so_dumb
                        ******* {not listen_rant} Is listening so hard? I already said it.
                            -> so_hard
                        ******* ...
                    ****** I can't do this now.
                        Then when? Ugh. # v_breakup_stageone_then_when
                        ------- (youknow_fine) You know what? Fine. # v_breakup_stageone_you_know_what
                        Have it your way.   # v_breakup_stageone_have_it_your
                        -> the_ol_hangup_callback
                    ****** ...
                    ------ So nothing, then.    # v_breakup_stageone_so_nothing_then
                    Sometimes I feel like you are just trying to get a rise out of me.  # v_breakup_stageone_sometimes_i_feel
                    Why take us down this path if you didn't have a reason? # v_breakup_stageone_why_take_us
                    Are you a sadist? Why do you want to hurt me so badly?  # v_breakup_stageone_are_you_sadist
                    You are lucky that I'm willing to stay with you. You're lucky I'm willing to help you.    # v_breakup_stageone_you_are_lucky
                    So keep that in mind.   # v_breakup_stageone_so_keep_that
                    ...
                    ****** ...
                        -> off_the_handle
                ***** This is a bad relationship.
                    Because you've let it become that way.  # v_breakup_stageone_because_youve
                    You need to open up and tell me what's wrong.  # v_breakup_stageone_you_need_to
                    -> want
                ***** ...
                    -> want
            **** ...
            ---- (so_dumb) I have just been so dumb. So stupid. So self-centered.   # v_breakup_stageone_i_have_been_dumb
            How can anyone stand me? How can anyone bear the burden of my company?  # v_breakup_stageone_how_can_anyone
            I'm so inconsiderate and, you're right, so deserving of everything you can throw at me.    # v_breakup_stageone_so_inconsiderate
            Fuck. I'm worthless. I am actually worthless.   # v_breakup_stageone_fuck_im
            ---- (worthless_pre) {stopping:
            - 
            - Do you think I'm worthless?   # v_breakup_stageone_do_you_think
            }
            ---- (worthless)
            <-silence_breakup(->worthless_pre)
            **** (sigh) \[Sigh\]
                What?           # v_breakup_stageone_what
                -> worthless
            **** You're not worthless.
                Really?     # v_breakup_stageone_really
                ***** Really.
                    ------ (okay) Okay.     # v_breakup_stageone_okay
                    Thanks.                 # v_breakup_stageone_thanks
                    Listen, I know you're upset, Carlee, and I know you want to talk about it.           # v_breakup_stageone_listen_i_know
                    But, it would be nice if you could bring up the issues without resorting to personal attacks.  # v_breakup_stageone_but_it_would
                    You know how sensitive I am. You know how important being with you is to me.       # v_breakup_stageone_sensitive
                    You could stand to be a little more considerate.        # v_breakup_stageone_stand_to_be
                    ****** ... Okay
                    ****** I-- Fine.
                    ****** ...
                ***** ...
                    Are you just lying to make me feel better? Is that what's happening?       # v_breakup_stageone_lying
                    ****** No. You're not worthless.
                        -> okay
                    ****** I think I need to go.
                        ...
                        Okay.       # v_breakup_stageone_okay_2
                        Yeah, I--   # v_breakup_stageone_yeah_i
                        I understand.   # v_breakup_stageone_i_understand
                        ...
                        Goodbye.    # v_breakup_stageone_goodbye
                        -> a_temp_reprieve
                    ****** ...
                        Right. So that's how it is. # v_breakup_stageone_right_so_thats
                        Okay, if that's what you really want.   # v_breakup_stageone_okay_if_you
                        Have it your way.   # v_breakup_stageone_have_it_your_2
                        -> the_ol_hangup_callback
            **** {sigh} This isn't fair.
                You're going to do this to me now, huh? After making me feel like this? # v_breakup_stageone_doing_this_now
                What is wrong with you? # v_breakup_stageone_what_is_wrong
                When did you become like this?  # v_breakup_stageone_when_did_you
                ----- (likethis)
                ***** I'm sorry. I didn't mean it.
                    ...
                    -> off_the_handle
                ***** I can't--
                    Right.      # v_breakup_stageone_right
                    Fine.       # v_breakup_stageone_fine
                    I get how it is.    # v_breakup_stageone_i_get_it
                    Have it your way.   # v_breakup_stageone_have_it_your_3
                    -> a_temp_reprieve
                ***** I want to break up with you.
                    -> stage_two
                +++++ ...
                    {stopping:
                        - Carlee. Answer me.    # v_breakup_stageone_carlee_answer_me
                            -> likethis
                        - Really? This is how you're going to play this?    # v_breakup_stageone_really_this_is
                            -> likethis
                        - Fine. # v_breakup_stageone_fine_2
                            Have it your way.   # v_breakup_stageone_have_it_your_4
                            -> the_ol_hangup_callback
                    }
            ---- Okay. # v_breakup_stageone_okay
            You know, I'm not that kind of guy. # v_breakup_stageone_not_that_kind
            I think some people think of me as that kind of guy, but... # v_breakup_stageone_i_think_some
            It's one of those things where certain kinds of people make good leaders.      # v_breakup_stageone_its_one_of
            Sometimes you need to be assertive. You need to take a hard stance or fight for what you want, otherwise you'll never get there.    # v_breakup_stageone_sometimes_you_need
            But sometimes people are confronted with self-possessed, but see mean.  # v_breakup_stageone_but_sometimes
            I don't want to be mean to you. And I'm not.    # v_breakup_stageone_i_dont_want
            So this conversation is going to be about you now, not me.  # v_breakup_stageone_so_this_convo
            Okay?       # v_breakup_stageone_okay_question
            ----(want) What do you want?    # v_breakup_stageone_what_do_you_want
            <-silence_breakup(->want)
            **** Nothing, forget it.
                Okay, I understand. You don't want to deal with this right now. # v_breakup_stageone_okay_i_understand 
                But I won't forget it.  # v_breakup_stageone_but_i_wont
                It hurts, you know? But pain is all part of the learning process    # v_breakup_stageone_it_hurts
                And I know under other circumstances, you would have broached this more delicately.     # v_breakup_stageone_and_i_know
                But I understand.   # v_breakup_stageone_but_i_understand_2
                We'll talk about this later.    # v_breakup_stageone_well_talk_later
                ***** Okay...
                ***** ...
                ----- I'm glad we can work out stuff like this together.    # v_breakup_stageone_im_glad
                So, what were we talking about before all the nastiness?    # v_breakup_stageone_so_what_were
                Ah. Right.  # v_breakup_stageone_right_2
                -> random_topic
            **** I want to talk about my day; my week.
                Oh. Oh for sure. Of course. Of course.     # v_breakup_stageone_oh_for_sure
                I mean, you could have brought it up at any time.   # v_breakup_stageone_brought_up
                Speak your mind. I can't read it after all, haha. # v_breakup_stageone_speak_your_mind
                ->work_stuff
            **** I want to break up with you.
                I'm trying to make things right here, Carlee.   # v_breakup_stageone_make_things_right
                You can't just keep saying that and expect me to somehow know how to make it right.  # v_breakup_stageone_you_cant_just
                That's not fair.    # v_breakup_stageone_thats_not_fair
                -> whynocomment
        *** (not_time) It's not about the time.
            Sorry, I'm just going off what you're saying.   # v_breakup_stageone_just_going_off
            What is it? # v_breakup_stageone_what_is_it
            -> it
        *** (m2) You never ask.
            You never told me something was wrong, and now that I know...   # v_breakup_stageone_never_told_me
            I have to be honest; I feel awful.  # v_breakup_stageone_i_feel_awful
            I just wished you told me earlier instead of letting this build up until it exploded.   # v_breakup_stageone_wished
            I feel as though I fucked up here, Carlee, but I really feel like you should have made it known.  # v_breakup_stageone_fucked_up
            ---- (bother) {stopping:
            - 
            - You should tell me when things are bothering you. # v_breakup_stageone_you_should_tell
            }
            <-silence_breakup(->bother)
            **** It's fine.
                Okay.   # v_breakup_stageone_okay_5
                I know it's been a long day. You're tired; you're overworked.   # v_breakup_stageone_long_day
                I really think you should see your manager and talk to him about your schedule.   # v_breakup_stageone_really_think
                You can't let people push you around, Carlee. You're going to go crazy. # v_breakup_stageone_push_around
                ***** I'm not going crazy.
                    I--I know. It's just a figure of speech.   # v_breakup_stageone_figure_of_speech
                    Don't overreact.        # v_breakup_stageone_overreact
                    ------ (overreact)
                    ****** I'm not overreacting!
                        Carlee, what is going on?       # v_breakup_stageone_whats_going_on
                        -> overreact
                    ****** I want to break up with you.
                        I'm trying to follow what you're saying but your argument is getting erratic.    # v_breakup_stageone_trying_to_follow
                        What am I doing, Carlee? What am I doing wrong? # v_breakup_stageone_what_am_i_doing
                        -> whynocomment
                    ****** (deepbreath) ...
                        Let's just take a deep breath, and stay calm.   # v_breakup_stageone_deep_breath
                        Deep in; deep out, okay?    # v_breakup_stageone_deep_in
                        Deep in; deep out.      # v_breakup_stageone_deep_in_2
                        I think it would be best for you if we talked about something a little less stressful. Maybe it will help us both get some perspective, alright?   # v_breakup_stageone_i_think_best
                        ->random_topic
                ***** ...
                    -> deepbreath
            **** {not listen_rant} Is listening that hard?
                ----- (so_hard)
                -> listen_rant ->
                ***** ...
                    Now, I am guessing you want to break up with me. That seems to be the pattern tonight.        # v_breakup_stageone_now_im_guessing
                    ****** I'm sorry.
                        ...
                        Carlee, don't be sorry. I am sorry.     # v_breakup_stageone_carlee_dont_be
                        I should apologize. That was inappropriate.     # v_breakup_stageone_i_should
                        ------- (movepast) Let's move past this, okay?    # v_breakup_stageone_lets_move_past
                        Let's not get hung up on this. We're a team.       # v_breakup_stageone_were_a_team
                        ******* Okay.
                        ******* ...
                        ------- Let's talk about something else, okay?      # v_breakup_something_else_okay
                        It'll be okay. Lets...  # v_breakup_something_itll_be_okay
                        Talk about something else.    # v_breakup_stagenone_talk_about_something_else
                        -> random_topic
                    ****** ...
                        ------- (off_the_handle) ...
                        Okay, I think that was a little off the handle of me.   # v_breakup_stageone_off_the_handle
                        You were just coming off very hostile and things got heated and--      # v_breakup_stageone_hostile
                        I think we just both need some time to cool off, okay?  # v_breakup_stageone_cool_off
                        We just both have to cool off.      # v_breakup_stageone_just_cool_off
                        -> movepast
    ** {not l1 or not l2} You never actually listen.
        --- (listen_now) {stopping:
            - I'm listening now.        # v_breakup_stagenone_listening_now
            - Look, I am listening right now. Let's talk.       # v_breakup_stagenone_look_listening_now
            }
        <- silence_breakup(->listen_now)
        *** (l1) I'm not talking about now.
            Oh, Carlee, geez. I'm so sorry. # v_breakup_stagenone_oh_carlee_geez
            I just have a ton of stuff going on right now, and I know I get carried away sometimes but...     # v_breakup_stagenone_ton_of_stuff
            You know what, not tonight. # v_breakup_stagenone_not_tonight
            Now we're talking about you.    # v_breakup_stagenone_talking_about_you
            I want to listen.               # v_breakup_stagenone_want_to_listen
            Tell me what's going on.        # v_breakup_stagenone_tell_me_what
            ---- (week) How was your week?  # v_breakup_stagenone_how_was_your_week
            <- silence(->week)
            **** Long
                -> work_stuff
            **** Why are you asking me this?
                Because I know it's important to you?       # v_breakup_stagenone_important_to_you
                This is how you work out your problems.     # v_breakup_stagenone_work_out_your
                You told me that I was being too selfish with your time and I know it's been a rough week for you too. # v_breakup_stagenone_you_told_me
                So, let's talk about it.    # v_breakup_stagenone_lets_talk_about_it
                -> week
            **** I'm breaking up with you.
                I heard you, and I'm listening, I just to understand: why?  # v_breakup_stagenone_i_heard_you
                -> why
        *** (l2) Yes, finally.
            Carlee, I am making an effort here.     # v_breakup_stagenone_making_an_effort
            You can show some appreciation. # v_breakup_stagenone_appreciation
            *** {not listen_rant} Is listening so hard?
                -> so_hard
            *** Fine.
            *** ...
            --- Look, tell me about your week, okay?    # v_breakup_stagenone_about_your_week
            ->work_stuff
    ** You're always negging me.
        Negging? What is this word: 'negging'? I have never negged you.      # v_breakup_stagenone_negging
        If I've been negging you then you have to speak up and tell me that I'm doing something wrong because how else am I supposed to know? # v_breakup_stagenone_if_negging
        But it sounds like it's not negging you have a problem with. It sounds like you just don't want to be criticized.   # v_breakup_stagenone_sounds_like_negging
        --- (neg) {stopping:
        - 
        - Carlee, you can't expect me to never criticize you.   # v_breakup_stagenone_cant_expect_me
        }
        <-silence_breakup(->neg)
        *** That's not what I'm saying at all.
        *** Just... whatever. It doesn't matter.
        *** I can't... I can't come up with a good example.
        --- Look, Carlee. I am going to try very hard to not do anything to make you uncomfortable.      # v_breakup_stagenone_very_hard
        I am going to pay extra attention to every word I say. That's what I'm willing to do.      # v_breakup_stagenone_pay_extra_attention
        I want you to be happy. I will go leaps and bounds to do that.  # v_breakup_stagenone_leaps_and_bounds
        But _you_ have to promise that you're going to meet me halfway and speak up for yourself. Okay? # v_breakup_stagenone_you_have_to_promise
        *** I want to break up with you.
            ->why
        *** You're a bad person.
            ->patterns
        *** Okay...
            Good. Good. Okay?       # v_breakup_stagenone_okay_good_good
            I want to thank you for bringing this up.   # v_breakup_stagenone_thank_you_for
            See? Look what talking through your problems like an adult can do.      # v_breakup_stagenone_see_look
            I think you're making more progress because of me than your therapist.  # v_breakup_stagenone_more_progress
            Anyway, let's talk about something else. This was really cathartic. # v_breakup_stagenone_cathartic
            ->random_topic
        *** ...
            ->patterns
        
* I don't want to keep doing this.
    ...
    Doing what?     # v_breakup_stagenone_doing_what
    Being together? # v_breakup_stagenone_being_together
    {tractor_dad: 
        - Is this about Tractor Dad?    # v_breakup_stagenone_is_this_tractor_dad
        }
    -> what
    
= resume_breakup
-> count_breakup

// We should be insulated through earlier conditionals against hitting this section twice
= listen_rant
Excuse me?  # v_breakup_stageone_excuse_me
"Is listening so hard?" # v_breakup_stageone_listening_so_hard
Was listening so hard when we were on the beach that one time and you started sobbing about that woman who chided you just before dying on your shift at the hospital?       # v_breakup_stageone_beach
Was listening so hard as you systematically divulged every hang up you had in your previous relationships and made me sit through the stories of all the men who you slept with. # v_breakup_stageone_divulged
Was listening so hard when your father was sick and no one knew if he was going to make it out alive?  # v_breakup_stageone_father
Huh?        # v_breakup_stageone_huh
Was listening in any of those cases so hard?    # v_breakup_stageone_was_listening
Was it Carlee?                                  # v_breakup_stageone_was_it_carlee
I have been here, on the line, every time you have needed me, okay? # v_breakup_stageone_i_have_been_here
I have forced myself to be there for you.   # v_breakup_stageone_forced_myself
I am dating you despite you. Despite your therapist, despite your hang ups, and despite your coloured flaws.        # v_breakup_stageone_dating_despite_you
Is listening so hard?           # v_breakup_stageone_listening_so_hard_2
It is hard sometimes, Carlee.   # v_breakup_stageone_hard_sometimes
Sometimes, I don't think you appreciate that. Or me.    # v_breakup_stageone_appriciate
->->

= work_stuff
- (work_stuff_return)
So... How was work?           # v_breakup_stagenone_so_how_was_work
<-silence(->work_stuff_return)
+ {work_stuff > 1} We're going in circles!
    ->patterns
* Fine.
    Haha Carlee, you did all this fighting just so we could talk about your day and now it was just 'fine'.     # v_breakup_stagenone_all_this_fighting
    I know you want your day to be interesting but if nothing happened, nothing happened.               # v_breakup_stagenone_want_interesting
    I don't know why that's something to be upset about.    # v_breakup_stagenone_upset_about
    ** I don't feel talkative.
        Okay...         # v_breakup_stagenone_okay_7
        Well...         # v_breakup_stagenone_well
        I'm not sure what to do about that. # v_breakup_stagenone_im_not_sure
        *** Just say whatever you want.
            Okay...         # v_breakup_stagenone_okay_8
            Only because that's what you want.      # v_breakup_stagenone_only_because
            So, um. Hrm.                # v_breakup_stagenone_so_um_hrm
            -> random_topic
        *** I want to break up with you.
            -> resume_breakup
        *** ...
            Let me think here...            # v_breakup_stagenone_let_me_think
            -> random_topic
    ** It was shitty.
        ->shitty
    ** ...
        Okay, well. Fine is fine.       # v_breakup_stagenone_okay_well_fine
        I'm glad your day was fine.     # v_breakup_stagenone_glad_fine
        It can be very difficult to understand you sometimes, you know. # v_breakup_stagenone_difficult
        Anyway, um. Hrm.    # v_breakup_stagenone_anyway_um_hrm
        So...               # v_breakup_stagenone_sooo
        -> random_topic
* Shitty.
    -- (shitty) {stopping:
    - Why?      # v_breakup_stagenone_why_4
    - Why was it shitty?    # v_breakup_stagenone_why_was_it_shitty
    }
    <-silence(->shitty)
    ** There was this guy...
        ->thisguy
* There was this guy...
    -- (thisguy) He didn't say anything inappropriate to you, did he?   # v_breakup_stagenone_inappropriate
    -- (whatno)
    ** What? No.
        Then what?  # v_breakup_stagenone_then_what
        ->whatno
    ** Can you listen for one second?
        I am listening. I'm just mad at this guy.   # v_breakup_stagenone_i_am_listening_mad
        I don't like anyone who would hurt you. # v_breakup_stagenone_anyone_would_hurt
        He needs to understand boundaries.  # v_breakup_stagenone_boundaries
        *** It wasn't that. We were having trouble with his insurance.
            God, that's awful.  # v_breakup_stagenone_thats_awful
            That whole system is in complete disarray.  # v_breakup_stagenone_disarray
            The layers of bureaucracy and self-interested opportunists in the industry is nauseating.      # v_breakup_stagenone_layers
            It just makes me sick, you know?    # v_breakup_stagenone_me_sick
            Hrm.        # v_breakup_stagenone_hrm_4
            -> healthvetica
        *** Why are you getting so worked up?
            It just frustrates me to think someone would treat my girlfriend that way.  # v_breakup_stagenone_frustrates_me
            -> godmen
        *** ...
            -> godmen
    ** ...
        So that was it, was it?     # v_breakup_stagenone_so_that_was_it
        --- (godmen) God. Men, right?   # v_breakup_stagenone_men_right
        The worst.  # v_breakup_stagenone_he_worst
        {
        - wedding:I really hope no one in my family says anything inappropriate to you at the wedding. # v_breakup_stagenone_really_hope_family
        - else: I really hope no one in my family says anything inappropriate to you ever.   # v_breakup_stagenone_really_hope_family_2
        }
        They would. They're those sorts of people, you know?    # v_breakup_stagenone_they_would
        -> wedding
        
= the_ol_hangup_callback
pre-hangup #continue
~ hangup()
- (recall)
pre-delay #null
~delay(10)
pre-call #null
~ call()
pre-call_return #continue
{ call_return():
-0:
    -> answer
-1:
	-> END
-2:
    -> recall
}
- (answer)
...
I'm... um.          # v_breakup_stagenone_im_um
...
I'm sorry, Carlee. I'm really, really sorry.    # v_breakup_stagenone_sorry_carlee
I know this is all my fault. I get it now, okay? I get it now that I made a mistake and I get that you're upset.        # v_breakup_stagenone_all_my_fault
But it's just one mistake and it was a big mistake but it was a mistake. Okay Carlee? It was my mistake.      # v_breakup_stagenone_but_one_mistake
I just feel awful and guilty and just awful awful awful.    # v_breakup_stagenone_feel_awful
Fuck. Can you say something, Carlee? Can you? Please?       # v_breakup_stagenone_fuck_say_something
- (say)
<-silence_to_stage_two(->say)
* Hi.
    ... Hi.     # v_breakup_stagenone_hi
    Thank you for picking up. It means the world to me just to hear your voice again.   # v_breakup_stagenone_thank_for_picking
    Look, can we save this for another day? # v_breakup_stagenone_save_another_day
    I feel like we just need to save this for another day.  # v_breakup_stagenone_feel_like_save
    -- (say2)
    <-silence_to_stage_two(->say2)
    ** ... Fine.
        Okay... I'll, um. I'll leave you alone now. # v_breakup_stagenone_okay_ill_um
        Bye, Carlee.            # v_breakup_stagenone_bye_carlee
        ->a_temp_reprieve
    ** I want to get this out now.
        Why? Why does it have to be now? Today? # v_breakup_stagenone_why_why_does_it
    ** I can't keep doing this.
* You can't keep calling me.
* This needs to stop.
- What is it you want from me, Carlee? What do you want me to do! I didn't do anything!       # v_breakup_stagenone_what_want_from_me
I didn't do anything!     # v_breakup_stagenone_didnt_do_anything
I did not do anything.                          # v_breakup_stagenone_not_do_anything
-> stage_two

= silence_to_stage_two(->go_back)
+ ...
{stopping:
    - Say something?        # v_breakup_stagenone_say_something
    - Carlee?               # v_breakup_stagenone_carlee_question
    - Say something!        # v_breakup_stagenone_say_something_2
    - -> stage_three
}
->go_back

= a_temp_reprieve
~ temp rep_calls = 0
pre-hangup #continue
~ hangup()
- (recall)
~ rep_calls = rep_calls + 1
pre-delay #null
~delay(10)
pre-call #null
~ call()
pre-call_return #continue
{ call_return():
-0:
    -> answer
-1:
	-> END
-2:
    -> recall
}
- (answer)
{ rep_calls > 2: ->not_taking_my_calls->look }
Look, Carlee, I know you are upset with me right now. I know you want your space.       # v_breakup_stagenone_look_carlee_know
But it is not fair for you to be upset and for me not to know why.      # v_breakup_stagenone_not_fair_for_you
- (look)
<-silence_to_stage_two(->look)
* I told you already.
    Told me what?       # v_breakup_stagenone_told_me_what
    You said a bunch of stuff and it was all confusing. # v_breakup_stagenone_you_said
    How can you expect me to focus when you're screaming at me. # v_breakup_stagenone_how_can_you
    ** I wasn't screaming.
        Oh, sorry. Technically you weren't "screaming". # v_breakup_stagenone_oh_sorry_technically
        I didn't realize we were getting pedantic about what screaming was. # v_breakup_stagenone_didnt_realize
        *** This is stupid.
            I tell you my feelings and your reply is "this is stupid"?  # v_breakup_stagenone_i_tell_you
        *** Leave me alone!
        *** ...
        --- ->stage_two
    ** This isn't fair.
        You think this isn't fair?  # v_breakup_stagenone_you_think_not_fair
        You're yelling at me and being an awful person but you won't tell me what I did to deserve it.      # v_breakup_stagenone_youre_yelling_at_me
        You have to tell me. You have to tell me what I did or it's not an argument, it's torture.       # v_breakup_stagenone_you_have_to_tell 
            *** Fuck off.
            *** Leave me alone!
            *** ...
            --- ->stage_two
    ** ...
        -> stage_two
* I just need time to think!
    Think?                      # v_breakup_stageone_think
    What are you saying?        # v_breakup_stageone_what_you_saying_4
    -- (whatsay)
    <-silence_to_stage_two(->whatsay)
    ** I want to break up with you!
        -> stage_two
    ** Why can't you leave me alone for even five minutes?
        Do you think I'm not trying, Carlee?        # v_breakup_stageone_not_trying
        Every time I hang up all I hear is silence and horror. I am getting destroyed over here and meanwhile you are mulling over what you want to do with your life.       # v_breakup_stageone_every_time_i_hang
        Have you considered how any of this affects me?     # v_breakup_stageone_considered_how
        Why don't you care about me?    # v_breakup_stageone_care_about_me
        *** This isn't about you.
            -> stage_two
        *** Stop! Stop! Stop!
            Stop what!                  # v_breakup_stageone_stop_what_2
            **** {not listen_rant} Why can't you listen?
                -> listen_rant ->
                ***** ...
                    Look, let's just talk about something else, okay?   # v_breakup_stageone_look_lets
                    Let's, uh. Let's talk about something else. # v_breakup_stageone_lets_uh
                    ****** ... Okay.
                        Good.       # v_breakup_stageone_good_7
                        Okay, good. # v_breakup_stageone_okay_good
                    ****** ...
                    ------ Um.      # v_breakup_stageone_um_3
                    -> random_topic
            **** Leave me alone!
            **** I hate you.
            **** ...
            ---- ->stage_two

= not_taking_my_calls
So what? Now you're not taking my calls?        # v_breakup_stageone_now_not_taking
Do you have any idea how that makes me feel?    # v_breakup_stageone_any_idea_feel
- (choice)
<-silence_to_stage_two(->choice)
* What is wrong with you?
* Do you have any idea what this is doing to me?
- I called you to apologize for what happened and to try to make things right.  # v_breakup_stageone_called_to_apologize
You won't even tell me what's wrong. You won't even answer that simple question and you just expect me to take it.  # v_breakup_stageone_you_wont_even
->->

= stage_two
I'm tired of this. You owe me a real god damn reason.       # v_breakp_2_tired
- (justify)
* {healthvetica} (Healthvetica) You talk to me like I'm stupid.
    Carlee, you're a nurse, okay? A _nurse_. Do you think you're God or something?  # v_breakp_carlee_nurse
    You're not a Doctor, like my cousin is. You're not a healthcare professional.   # v_breakp_doctor
    I know things. Just because you don't get them doesn't mean I don't know them.  # v_breakp_i_know
    I have spent the better part of two years thinking about this.                  # v_breakp_spent_part
    So for you to come in at the last minute pretend to understand my genius: it's insulting.   # v_breakp_come_in
    I'm am not stupid. My ideas are not stupid.                                     # v_breakp_not_stupid
    They're complicated; they're nuanced!                                           # v_breakp_complicated
    They're ineffable, is what they are.                                            # v_breakp_ineffable
    Do you see why I am upset now, Carlee? Huh? Do you understand?                  # v_breakp_do_you_se
    ** Healthvetica is a wet dream.
        ->stage_three
    ** I'm not responsible for your issues anymore.
        ->stage_three
    ** This isn't all.
        Then what?  # v_breakp_then_what_1
    ** ...
* {tractor_dad} (Tractor Dad) You punish me for liking a video game.
    I'm not punishing you, Carlee, I'm educating you, alright?      # v_breakp_punishing
    You can't like Tractor Dad. Stupid people like Tractor Dad. Smart people say so.    # v_breakp_tractor_dad
    You have to learn to think for yourself, like I have.           # v_breakp_learn_to_think
    So feel bad already. When you like the wrong thing, you're supposed to feel bad!    # v_breakp_feel_bad
    ** I won't let you control me anymore.
        ->stage_three
    ** You are conceited and delusional.
        ->stage_three
    ** This isn't all.
        Then what?          # v_breakp_then_what_2
    ** ...
* {wedding} (Wedding) You treat me like a prop.
    I was trying to make you passable, okay Carlee? I was trying to make sure my family would love you. # v_breakp_passable
    You don't get how they are, these people. You don't get how they make you feel. How they keep you weak and broken and dependant so they can control you.  # v_breakp_dont_get
    I was going to save you from all that. It was never about anything more.    # v_breakp_going_to
    Because I don't need their approval. I have the girl. I have the educated ideas. I read Gizmodo.    # v_breakp_because
    You hear that Mom? Dad? Henry? I don't need you!    # v_breakp_hear_that
    ** You are just like them.
        ->stage_three
    ** I am stronger than you.
        ->stage_three
    ** This isn't all.
        Then what?  # v_breakp_then_what_3
    ** ...
* {patterns} ("Patterns") You try to control me.
    That's a fucked up thing to say, Carlee. It really is.      # v_breakp_fucked_up
    Those are just your problems talking.   # v_breakp_problems_talking
    You don't understand what it is you are really feeling. You don't understand what it is you are really thinking!    # v_breakp_understand
    You can not trust yourself. # v_breakp_trust_you
    You have to trust me.       # v_breakp_trust_me
    ** I know who I am.
        ->stage_three
    ** I can't believe I ever did.
        ->stage_three
    ** This isn't all.
        Then what?              # v_breakp_then_what_3
    ** ...
* ...
    ->stage_three
* default
    ->stage_three
- So what else, huh? What else is on the docket?    # v_breakp_what_else
-> justify

= stage_three
~ enforce_silence_counter = false
{choice: -> choice}
{stopping: 
- You know what? I don't need you, Carlee.  # v_breakp_3_know_what
- 
}
You are a mess, you know that? A hot, steaming, pile of garbage-- junk trash leaking bag oozy mess thing!   # v_breakp_3_mess
~ start_messages()
You just want someone to come in, collect your shit, and clean you up?  # v_breakp_3_someone
I was doing that. I was taking on that burden. I was your white knight. # v_breakp_3_i_was
But no, that wasn't good enough for you.                                # v_breakp_3_but_no
Your demands are impossible. No man is ever gonna be able to foot this bill. I am the best you can hope for.    # v_breakp_3_demands
Just think about what it would be like to be alone. To come home and have no one to call. To go to sleep and not have me hovering over you. To wake up to silence instead of all the thoughts I have spent the night crafting for you.   # v_breakp_3_think_about
But you know what, now _I_ am ending it.    # v_breakp_3_i_end
So look in the mirror, Carlee.              # v_breakp_3_mirror
Because that's gonna be the only other face you get to look at in the morning, and when you've had to live with that for a few months maybe you'll know what I've endured.   # v_breakp_3_because
I loved you, Carlee.        # v_breakp_3_loved_you
I didn't hold back for a second. I put my whole self in and for what?   # v_breakp_3_hold_back
What did I get? # v_breakup_3_what_did
Because this shit wasn't in your OKCupid profile.    # v_breakp_3_okc
- (choice) {whyareyou and stop and cry: -> gofuck}
* (whyareyou) Why are you like this?
    Do you know what it was like: growing up with the family I had, working at the company I'm trapped in, and trying to get the one thing I actually love kickstarted and off the ground?   # v_breakp_3_do_you_know
    Do you know what it's like?                                             # v_breakp_3_what_its_like
    The entire world is against me. I'm the victim here.                    # v_breakp_3_entire_world
    But no, me talking about the things I care about is "too much".         # v_breakup_3_but_no_2
    I was ready to give everything for you.                                 # v_breakp_3_i_was_ready
    Just as I was ready to give it all to Jessica before.                  # v_breakp_3_jessica
* (stop) Please stop.
    Stop?       # v_breakp_3_stop
    You started it.             # v_breakp_3_you_started_it
    You started it. You started this.           # v_breakp_3_you_started_this
    You could have just asked to talk later but you did this instead.   # v_breakp_3_asked
    You're trying to undo me.   # v_breakp_3_undo
    Well I do not get undone.  # v_breakp_3_well_i
    You think you're the first person to try these mind games on me? You think you're the first person to try to screw with me?  # v_breakp_3_you_think
    I'm smarter than you.   # v_breakp_3_im_smarter
* (cry) \[Cry\]
    Really? You're going to try to play the victim now? # v_breakp_3_really
    You don't think everyone is gonna see past this?    # v_breakp_3_everyone_see
    I have always been good. I am a good guy.           # v_breakp_3_always_good
    People are going to see through this.               # v_breakp_3_people_see
    I know how you work; I see behind all this.        # v_breakp_3_i_know_how
+ ...
{stopping:
    - What now, Carlee? Are you going to cry?       # v_breakp_3_what_now
    - Ha. You were so talkative before. Where are all your points now?  # v_breakp_3_ha_talkative
    - You asked for a debate, Carlee. I thought you always considered yourself 'rational'. Now you see I'm the smart one.   # v_breakp_3_asked_debate
    - Okay, I'm done.   # v_breakp_3_okay_done
    -> gofuck
}
- -> choice
- (gofuck) Fuck you, Carlee.    # v_breakp_3_fuck_you
-> stage_four

= stage_four
pre-hangup #continue
~ hangup()
- (breakup_call)
pre-delay #null
~ delay(5)
pre-call #null
~ call()
pre-call_return #continue
{ call_return():
-0:
    -> poison
-1:
	-> END
-2:
    -> breakup_call
}
- (poison)
{shuffle:
    - I can't believe I was going to show you to my parents. They would see right through someone like you. # v_breakp_4_cant_believe
    We are an intelligent breed.    # v_breakp_4_intelligent_breed
    - Think back, Carlee. Think back to all those pleasant memories of ours.    # v_breakp_4_think_back
    I hope they have been sullied for you. If you're going to rob them from me, I am going to make damn sure you'll never be able to enjoy them either. # v_breakp_4_i_hope
    - Your work at the hospital? I never respected that. I never for a moment believed that a nurse who probably wipes old people's asses all day actually made a difference.  # v_breakp_4_work_hospital
    One day my name is gonna be on everybody's lips. You just wait. # v_breakp_4_one_day
    Not that I need your approval.  # v_breakp_4_not_that
    - You know, I want to meet the next guy you dupe into dating you. How dense would he have to be?  # v_breakp_4_next_guy
    I only did it because I wanted a piece of your ass. I was tricking you this whole time. # v_breakp_4_i_only
    I never spent nights sobbing and terrified about whether you were going to leave me.    # v_breakp_4_never_spent
    Ha. Gotcha! # v_breakp_4_gotcha
    - I've been texting Jake, Marie, and Carr. They're all fuming.                          # v_breakp_4_texting
    They're probably kicking themselves for not warning me sooner.                          # v_breakp_4_kicking
    I guess everyone knew how this would end.                                               # v_breakp_4_everyone_knew
    - Hot and cold; hot and cold. You strung me along; you deserve to regret it.                  # v_breakp_4_hot_cold
    - I feel free now. I finally feel free.                                                 # v_breakp_4_free_now
    What does that mean about who was keeping down whom? Huh?                               # v_breakp_4_what_does
    That's right. I don't care what you think anymore.                                      # v_breakp_4_thats_right
    - ->carle_forgive->
}
pre-hangup #continue
~ hangup()
-> breakup_call

= carle_forgive
Carlee. Oh my God, _please_ forgive me. I did a bad thing, okay? I get that I did a bad thing. # v_breakp_4_carlee_oh_god
    + Please stop calling.
    + I...
    + ...
- So this is how you treat a guy who makes one mistake? I'm--     # v_breakup_4_so_this
I'm better off without you.     # v_breakp_4_better_off_2.1
Consider this my last call!     # v_breakp_4_better_off_2.2
->->
    
    
= silence_breakup(->apologize)
+ ...
    ~ temp repeats = 0
    -- (repeat) {shuffle:
        - Carlee, you can't do this to me. Not after saying all of this. # v_breakup_5_cant_do_this
        - Carlee. Answer. # v_breakup_5_carlee_answer
        - Carlee.       # v_breakup_5_carlee
        - I'm really sorry, Carlee. I--I don't know what I'm doing. Please. Just tell me. Please. # v_breakup_5_really_sorry
        - I deserve an answer. # v_breakup_5_deserve
        - You can't hide from this. # v_breakup_5_you_cant_hide
        - This is... are you trying to torture me? Is this some misguided revenge? For what? # v_breakup_5_this_is
    }
    ~ repeats = repeats + 1
    ++ Okay.
        Okay? Okay what? # v_breakup_5_okay_okay_what
        -> apologize
    ++ I can't talk about this today.
        You have to talk about this today.  # v_breakup_5_have_to
        You don't get to dump this on me and expect me to just deal.    # v_breakup_5_dump
        You're supposed to be an adult. Adults talk through their problems. # v_breakup_5_supposed_adult
        So, we're going to talk.    # v_breakup_5_talk
        -> apologize
    ++ I'm too tired for this.
        Oh yeah? Tough shit. You're the one who brought this up. # v_breakup_5_tough_shit
        This relationship means too much to both of us. I will not let you just give up. # v_breakup_5_this_relationship
        -> apologize
    ++ ...
        {
        - repeats > 3:
            You have to answer. # v_breakup_5_have_to_answer
            -> apologize
        -else:
            -> repeat
        }
