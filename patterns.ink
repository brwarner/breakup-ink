/*
    Wherein the antagonist tells us about our problems.
    He wants to help us.
*/
== patterns ==
/* 
    I explicitely do not set the breakup flag to false here. It should keep whatever
    value it had prior to coming here. This way, if you hang up during patters when
    patterns was triggered from the breakup logic, he treats the hangup as a breakup
    hangup. If you didn't, it's treated as a regular hangup.
    I also don't set the last_topic variable here. When you leave patterns, we should
    avoid returning to the topic that brought you here.
*/
{ 
- not stage_one: -> stage_one
- not stage_one.he_explains: -> try_again
- else: -> explain_again
}

// This is the route we use if you've already been here
//  But never got his pseudo-psychology diatribe
= try_again
Listen, Carlee.                                                 # v_patterns_stageone_listen_carlee
I know you didn't want to talk about this last time but...      # v_patterns_stageone_i_know_you
-> told_me

// This is used if you've been here before
//  but have seen the diatribe
= explain_again
Carlee... We had that discussion, remember? About those patterns?       # v_patterns_stageone_discussion
Do you think you want to talk about that again?                         # v_patterns_stageone_talk_about
I know it's sometimes hard to process the first time.                   # v_patterns_stageone_sometimes_hard
I have spent a lot of time studying psychology for Healthvetica. I can help.    # v_patterns_stageone_spent_studying
+ I'm fine.
    Are you sure? You don't have to be.     # v_patterns_stageone_you_dont_have
    It's not healthy to pretend.            # v_patterns_stageone_healthy
    ++ I'm fine.
        Okay. I trust you, okay? I want you to know that.   # v_patterns_stageone_i_trust_you
        -> random_topic
    ++ Whatever.
        -- (fine_whatever) You should take this more seriously. # v_patterns_stageone_seriously
        Okay. Let's try this.                                   # v_patterns_stageone_lets_try_this
        -> he_explains
    ++ ...
+ Whatever
    -> fine_whatever
+ ...
- Okay. I'm going to try and help you.                          # v_patterns_stageone_try_and_help
-> he_explains


// Main entry point if you haven't been down this route before.
= stage_one
I'm starting to see a pattern with you.         # v_patterns_stageone_pattern
<- silence_pattern(->stage_one)
* A pattern with _me_?
    Yeah.                                        # v_patterns_stageone_yes
* I don't want to talk about this.
    Carlee... You can't always hide from your problems. # v_patterns_stageone_cant_hide
- (told_me) You told me, word-for-word, that you have a pattern of being: "avoidant", "distant", and have a history of "isolating behaviour."      # v_patterns_stageone_told_me
Isn't that what you said?       # v_patterns_stageone_isnt_that
<- silence_pattern(->told_me)
+ I told you that in trust.
    And I haven't told anyone. I'm trying to demonstrate my sympathy and support.   # v_patterns_stageone_told_anyone
    -- (grow) You said you wanted to grow, and I'm trying to help you get there.    # v_patterns_stageone_wanted_to_grow
    Don't shut me out.  # v_patterns_stageone_dont_shut
    <- silence_pattern(->grow)
    ++ I don't feel comfortable with this.
        Carlee...       # v_patterns_stageone_carlee
        When we are up against our greatest fears, our instincts, who know only flesh, want to protect us. But they are only concerned with the immediate: right here, right now. You need to push past them and look beyond. # v_patterns_stageone_when_we
        Growth is never comfortable, but it is necessary. It's taken me a long time to learn that and now I want to share it with you. # v_patterns_stageone_growth
    ++ You're using this against me.
        Carlee, the only thing I care about right now is your well-being. Your health.  # v_patterns_stageone_the_only_thing
        You work at the hospital. You see sickness every day but that is just flesh.    # v_patterns_stageone_you_work
        And that's what you know. You're amazing at that.   # v_patterns_stageone_and_thats
        But there is another health and that's what you have to face.   # v_patterns_stageone_another_health
    ++ Stop.
        Stop what?                                          # v_patterns_stageone_stop_what
        +++ I don't want to talk about this.
            Alright. Fine. But we'll come back to this.     # v_patterns_stageone_alright_fine
            -> random_topic
        +++ ...
            It's fine. I know you're scared but we can do this. # v_patterns_stageone_its_okay
    ++ Fine.
        -> fine
+ This isn't the same.
    -- (different) How is this any different? I brought it up and you deflected.    # v_patterns_stageone_any_different
    -- (deflect)
    <- silence_pattern(->different)
    ** I don't know how to explain this.
        Then let me help.       # v_patterns_stageone_then_let
        -> deflect
    ** I don't know how to make you get it.
        Come on, I'm a smart guy. Give me a chance.     # v_patterns_stageone_come_on
        -> deflect
    ++ Fine. You're right.
        --- (fine) Okay. Good. This is something we can work with.  # v_patterns_stageone_okay_good
- (he_explains) So, you've been going to counselling for about... Three years now. That's essentially individual therapy, yes?       # v_patterns_stageone_so_you
<- shut_up_thread()
+ Yeah.
+ Uh-huh.
+ Sure.
+ ...
- So, in that time, what progress have you made? I don't want you to tell me; I just want you to think about it.    # v_patterns_stageone_in_that_time
Do you understand me? Is this making sense to you?  # v_patterns_stageone_understand_me
I just want you to take a moment to reflect on this for me. # v_patterns_stageone_moment_to
<- shut_up_thread()
+ Okay.
+ Sure.
+ Yeah.
+ ...
- In individual counselling, the goal is to help individuals address and overcome various negative impactful behaviours, overcome negative cognitions, and replace this with newer, more positive cognitions and behaviours. # v_patterns_stageone_individual_counselling
Are you following me?   # v_patterns_stageone_following
<- shut_up_thread()
+ Yeah.
    Good.           # v_patterns_stageone_good_1
+ Uh-huh.
    Great.          # v_patterns_stageone_great_1
+ Okay.
    Okay.           # v_patterns_stageone_okay_1
+ ...
- (agree) {stopping:
- So, can you not agree that by avoiding this discussion, you are doing exactly what you do every time we have one of these talks, which is simply continuing a pattern of negative behaviours.   # v_patterns_stageone_not_agree
    I mean... I hate to say this... But in a way, you're kind of textbook.      # v_patterns_stageone_hate_to_say
- Do you understand now how you are repeating that pattern?                     # v_patterns_stageone_repeating
}
<- silence_pattern(->agree)
+ I want to break up with you.
    -> breakup
+ Okay.
+ Sure.
+ Fine.
- Good. Very good.          # v_patterns_stageone_good_very_good
I know it doesn't feel like much right now, but these really are important first steps. # v_patterns_stageone_doesnt_feel
Phew. That was exhausting.  # v_patterns_stageone_phew
- (seen_patterns) Anyway, we can keep talking now.  # v_patterns_stageone_keep_talking
-> random_topic

= shut_up_thread
+ {seen_patterns} Fuck off!
-> shut_up

= shut_up
Excuse me?                              # v_patterns_stageone_excuse_me
+ I want to break up with you!
    -> breakup
+ ...
    Carlee, I didn't expect this sort of reaction from you.     # v_patterns_stageone_didnt_expect
    Maybe we can talk about this again when you're ready to discuss it rationally.  # v_patterns_stageone_maybe_we
    ++ I want to break up with you.
        -> breakup
    ++ Fine.
        You're very testy today.            # v_patterns_stageone_testy
    ++ ...
    -- ->random_topic

= silence_pattern(-> apologize)
+ ...
    -- (repeat) {cycle:
        - I know I'm not the only one who's had a tough week. You need to talk to me.   # v_patterns_stageone_tough_week
        - Carlee...     # v_patterns_stageone_carlee_elipsis
        - If you don't open up, no one will be able to help you.    # v_patterns_stageone_dont_open
        - I know it's scary to be vulnerable but you have to let love in.   # v_patterns_stageone_scary
        - I'm trying to encourage you.              # v_patterns_stageone_encourage
        - Okay. Alright. Fine. But we'll come back to this.     # v_patterns_stageone_come_back
            -> random_topic
    }
    ++ Fine
        Okay. So:           # v_patterns_stageone_okay_so
        -> apologize
    ++ I do not want to talk about this.
        Are you sure?       # v_patterns_stageone_are_you_sure
        +++ Yes
            ---- (new_topic) Okay, okay. We can talk about something else.   # v_patterns_stageone_okay_okay
            -> random_topic
        +++ I can't do this anymore.
            ...
            Do what?                        # v_patterns_stageone_do_what
            ++++ I want to break up with you
                -> breakup
            ++++ Let's talk about something else
                -> new_topic
            ++++ ...
                -> repeat
        +++ ...
            I think maybe you want to talk about it more than you know. # v_patterns_stageone_maybe_you
            -> apologize
    ++ ...
        -> repeat
        
        
        