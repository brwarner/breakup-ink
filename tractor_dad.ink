/*
    Wherein the antagonist complains about
    the app he's forced to work on: Tractor Dad.
    Sorry. Tractor Dad *3*.
*/
== tractor_dad ==
~ last_topic = "tractor"
~ in_breakup = false
{
- not stage_one: ->stage_one
- not stage_two: ->stage_two
- else: -> stage_three
}

= stage_one
* {not like_tractor_dad and not explain_dad} Tractor Dad?
    Haha, have I not told you about Tractor Dad?                # v_tractor_stageone_have_i_not
    {start.answer.late: 
        - Right, right. Yeah, it's late, I know.                      # v_tractor_stageone_right
    }
    I swear: Tractor Dad.                                       # v_tractor_stageone_i_swear
    -- (explain_dad) No, sorry: Tractor Dad _3_.                # v_tractor_stageone_no_sorry
    It's... you know what? You're smart. You have the name. You can figure out the rest.    # v_tractor_stageone_know_what
    This is what Jim is asking me for. And he actually thinks it's good, that's what gets me. He believes it.   # v_tractor_stageone_this_is_what_jim
    -> stage_one
* I guess they need to focus on what's making them money.
    Yeah, and you can bet Tractor Dad is making them a lot of money.        # v_tractor_stageone_you_can_bet
    It's stealing almost, isn't it? Tricking people into buying something they think they want? # v_tractor_stageone_its_stealing
    -- (makeup) {stopping:
        - It's just like women and makeup. # v_tractor_stageone_like_women
        - 
        }                         
    ** ... I like my makeup.
        Oh, I'm not saying you can't enjoy it.                              # v_tractor_stageone_cant_enjoy
        But the reason you like it, that's not you. That's them.            # v_tractor_stageone_reason
        -> makeup
    ** Women aren't drones.
        Well, no more than anyone else, I guess. They're just more ferociously targeted. # v_tractor_stageone_no_more_than 
        -> makeup
    ** {makeup > 2} Face painting isn't new.
        Yes, but it used to mean something before it was corrupted by consumerism and big business. # v_tractor_stageone_big_business
        Your makeup doesn't mean anything.                                      # v_tractor_stageone_your_makeup
        -> makeup
    ** {makeup > 3} It's a part of who I am.
        ...
        *** I like getting up in the morning and putting it on.
        *** ...
            -> imback
        --- ...
        *** I like picking out new colours and figuring out what looks good on me.
        *** ...
            -> imback
        --- ...
        *** I wear it like you wear clothes.
        *** ...
            -> imback
        --- ...
        *** I wear it because it matters to me.
        *** ...
            -> imback
        --- ...
        --- (imback) Sorry, just had to grab something.                 # v_tractor_stageone_sorry
        I get it, but it's not about you. It's about the system.            # v_tractor_stageone_the_system
        I'm sorry that you feel like you have to put on a show for men all the time.    # v_tractor_stageone_show_for_men
        <- makeup
        *** I don't know how to make you understand.
            Oh, Carlee. I don't have to understand to care.             # v_tractor_stageone_oh_carlee
            -> healthvetica
    ** Sure.
        -> stage_two
    ** ...
        -> stage_two
* (like_tractor_dad) I didn't mind Tractor Dad.
    Yeah, Tractor Dad 2, maybe. I had a good hand in Tractor Dad 2.     # v_tractor_stageone_tractor_dad_2
    Now they don't let us decide anything. God forbid they let us put some heart into something.     # v_tractor_stageone_now_they_dont
    <- stage_one
    ** I think you're doing a good job.
        Thanks, Carlee.                                                 # v_tractor_stageone_thanks_carlee
        You know, you are out there, at the hospital, every single day, taking in every asshole that comes through that door and making sure they're cared for.                              # v_tractor_stageone_you_know_hospital
        I wish I could making the sort of difference out there you are. That's what I really want.   # v_tractor_stageone_i_wish
        I really, truly, do respect you for doing that. So many people wouldn't care.               # v_tractor_stageone_i_really_truly
        *** Thanks, that... actually means a lot.
            Hey, no worries.                                                 # v_tractor_stageone_no_worries
            Set against the backdrop of the Tractor Dad's of the world, everything people like us do is meaningful.     # v_tractor_stageone_set_against_the
            ->stage_two
        *** Thanks.
            "Thanks."       # v_tractor_stageone_thanks_quote
            Haha            # v_tractor_stageone_haha
            **** What?
            **** ...
            ---- I feel like I give out a lot of compliments, and they're not always appreciated.   # v_tractor_stageone_lot_of_compliments
            Henry always does that.     # v_tractor_stageone_henry_always
            -> wedding
        *** There are plenty of places you can volunteer.
            Yes, I know that but I just feel a lot of those efforts are misdirected.      # v_tractor_stageone_yes_i_know_that
            Scale is too small; failure to address root causes. They're not sites of _real_ resistance. # v_tractor_stageone_scale_too_small
            Healthvetica is different.                                                              # v_tractor_stageone_healthvetica_is_different
            -> healthvetica
        *** ...
            ...
            -> patterns
    ** I guess you just need to power through.
        "Power through." Ugh.           # v_tractor_stageone_power_through
        How much sacrifice is too much? How much can I bear for a dream?    # v_tractor_stageone_how_much_sacrifice
        -> healthvetica
* That sucks.
    More than sucks, Carlee.                # v_tractor_stageone_more_than_sucks
    You know my parents didn't give me any money, not when I decided to follow what I really wanted to do.      # v_tractor_stageone_my_parents
    I didn't have this education passed down onto me. I didn't just stumble through it, or just happen to be there. # v_tractor_stageone_education_passed_down
    I worked for it and I felt the cost.    # v_tractor_stageone_i_worked
    All those nights, awake, alone, battling anxiety, spending half the time I could have spent studying trying to make rent and tuition.   # v_tractor_stageone_all_those_nights
    Did Jim ever have to do that?   # v_tractor_stageone_did_jim
    ** Have you asked him?
        I don't want to waste the time. I would rather spend it on something fruitful like learning how not to be angry all the time so I can actually focus on the projects that I care about.   # v_tractor_stageone_dont_want_to_waste
        --- (time) {stopping:
            - And... spending time with you.        # v_tractor_stageone_with_you
            - I said, all I really want is to spend more quality time with you.     # v_tractor_stageone_i_said_all
            }
        <- silence(->time)
        *** That's sweet.
            Thank you.      # v_tractor_stageone_thank_you
            I'm making a heart right now with my hands. Like the emoji? # v_tractor_stageone_heart_emoji
            I hope your life isn't the only one I'll impact.    # v_tractor_stageone_i_hope_your
            -> healthvetica
        *** Maybe he's an okay guy?
            ...
            -> patterns
        *** Cool.
        *** Smart.
        --- ...
            Carlee...       # v_tractor_stageone_carlee_ellipsis
            -> patterns
    ** Probably not.
        Exactly. God, he reminds me of Henry.       # v_tractor_stageone_reminds_me
        -> wedding
    ** ...
        Probably not, and that's why he thinks the way he does and comes up with the kind of ideas he does. # v_tractor_stageone_probably_not
        He's not like me. I care. # v_tractor_stageone_hes_not_like_me
        -> healthvetica
* {not explain_dad} ...
    Geez. Did I ever tell you about Tractor Dad?        # v_tractor_stageone_geez_tractor_dad
    -> explain_dad
* {explain_dad} ...
    Anyway, we don't need to talk about that.           # v_tractor_stageone_anyway_dont_need
    -> healthvetica

= stage_two
The way the masses buy into stuff that is so clearly designed to shut your brains off gets to me.    # v_tractor_stagetwo_masses_buy
It's like...    # v_tractor_stagetwo_its_like
You're only given so many seconds on this Earth, and we all know that. There's no delusion. No one thinks they're living forever.   # v_tractor_stagetwo_so_many_seconds
And to know that, and to willingly throw away time, then diarrhea a self-pitying diatribe on Facebook about how hard it is to be productive...  # v_tractor_stagetwo_to_know_that
- (what) {stopping:
    - What possesses people to do that? # v_tractor_stagetwo_what_possesses
    - Tell me, seriously, what drives such knowingly, self-destructive behaviour?   # v_tractor_stagetwo_tell_me_seriously
}
{|<-silence(->what)}
* ... Are you actually looking for an answer?
    Yes!    # v_tractor_stagetwo_yes
    -- (yes) I want to know what drives people to do this.  # v_tractor_stagetwo_i_want_to_know
    <- silence(->yes)
    ** You're not the smartest person out there.
        ...
    ** I don't know.
    -- -> patterns
* It's fun. Not everything has to be serious.
    Yeah, obviously not everything has to be serious. I'm not suggesting that.  # v_tractor_stagetwo_yeah_obviously
    But when the not serious thing comes in and impedes actual, real, measurable progress, then people like Jim win.    # v_tractor_stagetwo_but_when_not_serious
    Anyway, enough about Jim. Enough about his depoliticizing click-bait.   # v_tractor_stagetwo_anyway_enough
    He doesn't deserve the attention we give him.   # v_tractor_stagetwo_doesnt_deserve
    Healthvetica, on the other hand...  # v_tractor_stagetwo_healthvetica
    -> healthvetica
* People are people.
* Yeah.
* ...
    -> what
- Yes. Exactly! # v_tractor_stagetwo_yes_exactly
The masses can not save themselves. Sigh.   # v_tractor_stagetwo_masses_can_not
It just! Ugh.   # v_tractor_stagetwo_its_just
-> stage_three

= stage_three
~ temp move_on_tracker = 0
- (restart)
~ move_on_tracker++
{ move_on_tracker > 3: ->toomany }
I hate the <>
{cycle:
    - plows.        # v_tractor_stagethree_plows
    - tractors.     # v_tractor_stagethree_tractors
    - dads.         # v_tractor_stagethree_dads
    - friends of the dads.  # v_tractor_stagethree_friends
    - way they play golf.   # v_tractor_stagethree_golf
    - way they play golf on their tractors. # v_tractor_stagethree_golf_tractor
    - sanitization of the authentic agricultural experience.    # v_tractor_stagethree_sanitization
    - urbanization of rural comradery.      # v_tractor_stagethree_urbanization
}
<- silence(->restart) 
+ { move_on_tracker <= 2 } Yeah.
+ { move_on_tracker <= 2 } Okay.
+ { move_on_tracker <= 2 } Same.
* { move_on_tracker > 2 and not stage_four } Look, I get it.
    -> stage_four
+ { move_on_tracker > 2 and stage_four } I get it; You think I'm stupid.
    -> stage_four
+ { move_on_tracker > 2 } Can we talk about something else?
    Oh. Yeah. Sure.     # v_tractor_stagethree_yeah_sure
    This was getting exhausting.    # v_tractor_stagethree_exhausting
    -> random_topic
+ { move_on_tracker > 2 } This is stupid.
    ...
    What?   # v_tractor_stagethree_what
    ++ I said this is stupid
        ...
        -> patterns
    ++ Sorry, was talking to someone else.
        Oh, okay. Cool. # v_tractor_stagethree_okay_cool
        Anyway...   # v_tractor_stagethree_anyway
    ++ I want to break up with you.
        -> breakup
- -> restart

VAR tractor_options = 0

= toomany
Anyway, I'm feeling a little exhausted with this topic. # v_tractor_stagethree_feeling_exhausted
-> random_topic

= stage_four
{constructed: ->notyou}
I don't think you do. I don't think you understand just _how much_ I hate it.       # v_tractor_stagefour_i_dont_think
And I don't blame you. In many ways, you're a part of it.                           # v_tractor_stagefour_and_i_dont_blame
You have such potential to rise above but you haven't yet. I want you to see.       # v_tractor_stagefour_such_potential
* Pardon?
* That's not true.
* ...
- I'm not blaming you. It's important not to get trapped in this "you vs. me" mentality.        # v_tractor_stagefour_not_blaming
I know you're prone to that but we're on the same side.                                         # v_tractor_stagefour_i_know
- (notyou) Look, This isn't about you in the particular.                                        # v_tractor_stagefour_look
This is more a <> 
{cycle:
- criticism of me.                          # v_tractor_stagefour_criticism_of_me
- criticism of society.                     # v_tractor_stagefour_criticism_of_society
- criticism of your upbringing.             # v_tractor_stagefour_criticism_of_upbringing
- criticism of consumerist society.          # v_tractor_stagefour_consumer
}
{cycle:
- Your views are not your own.                    # v_tractor_stagefour_not_your_own
- You have to be critical of your perspective.    # v_tractor_stagefour_be_critical
- Your ideas precede you.                         # v_tractor_stagefour_ideas_precede
}
- (constructed) They're constructed.            # v_tractor_stagefour_constructed
{tractor_options >= 3: -> toomany}
<-silence(->notyou)
* I don't think there's anything wrong with me.
    ~ tractor_options++
    And that's exactly what I'm saying!         # v_tractor_stagefour_what_im_saying
    It's not you; it's just <>  
    {cycle: 
    - everything about you!                # v_tractor_stagefour_about_you
    - society!                                  # v_tractor_stagefour_society
    - our world!                                # v_tractor_stagefour_our_world
    - our culture!                              # v_tractor_stagefour_our_culture
    - capitalism!                               # v_tractor_stagefour_capitalism
    }
    You're a product of the trends just like Tractor Dad is and just like Healthvetica is not.  # v_tractor_stagefour_product_of_trends
    Did you know Tractor Dad 3 was the top trending game for *twelve* consecutive weeks?        # v_tractor_stagefour_did_you_know
    Healthvetica has not been given a dime!                                                     # v_tractor_stagefour_not_a_dime
    ** I don't want to talk about Healthvetica right now.
        I understand. It's been a long day and I respect what you're saying.                    # v_tractor_stagefour_i_understand
        And I know, under normal circumstances, you'd support me no matter what.                # v_tractor_stagefour_and_i_know
        I just... Ugh.                                                                          # v_tractor_stagefour_i_just
    ** That's not the point.
        But that is the point! Don't you see? I'm trying to change the world.                   # v_tractor_stagefour_but_that_is
        We are sinking as a people, I have the only boat, and no one wants to get on board!     # v_tractor_stagefour_we_are_sinking
        _Sigh_                                                                                  # v_tractor_stagefour_sigh
    ** I'm not the one with the problem.
        Deflection. This is what I'm talking about.                                             # v_tractor_stagefour_deflection
        I want...                                                                               # v_tractor_stagefour_i_want
        ...
        I'm gazing into a mirror, Carlee but I'm seeing through it like a window to some other me. To a real me.    # v_tractor_stagefour_im_gazing
        And I want...                                                                           # v_tractor_stagefour_and_i_want
        _Sigh_                                                                                  # v_tractor_stagefour_sigh_2
        -> patterns
    ** ...
        Anyway.                                                                                 # v_tractor_stagefour_anyway
    -- ->healthvetica
* {makeup} All this because I like make-up?
    It's not just about make-up!                                                                # v_tractor_stagefour_not_about_makeup
    -> itsabout
* {not makeup} What is this about?
    -- (itsabout) It's make-up.                                                                 # v_tractor_stagefour_its_makeup
    ~ tractor_options++
    It's Tractor Dad.                                                                           # v_tractor_stagefour_its_tractor_dad
    It's everything.                                                                            # v_tractor_stagefour_its_everything
    ** Maybe it's you.
        Of course it is.                                                                        # v_tractor_stagefour_of_course
        I'm friction, sandpaper, a wrench.                                                      # v_tractor_stagefour_im_friction
        The world is a well-oiled machine made to work in such grinding, grueling ways, but smoothly.   # v_tractor_stagefour_the_world
        I make myself the problem because I want-- I *need* to see change.                      # v_tractor_stagefour_i_make_myself
        I just...                                                                               # v_tractor_stagefour_i_just_2
        -> stage_three
    ** I can't deal your constant negativity anymore.
        -> breakup
    ** I'm very tired.
        You're right. You're right.                                                             # v_tractor_stagefour_youre_right_youre_right
        This is a very... heavy topic for so late in the evening.                               # v_tractor_stagefour_this_is_very
        -> random_topic
    ** ...
        Listen, I know I can be a bit much sometimes and I want to just thank you for all that you've put up with from me.  # v_tractor_stagefour_listen
        Your time is... Precious. Invaluable. That's part of why I do all this.                                             # v_tractor_stagefour_your_time
        I want to be the best that I can be and I want the same for you...                                                  # v_tractor_stagefour_i_want_2
        It's just... not possible in a world with Tractor Dad.                                                              # v_tractor_stagefour_its_just_not_possible
        I just...                                                                                                           # v_tractor_stagefour_i_just_3
        -> stage_three
* You're an asshole.
    ~ tractor_options++
    Oh, Carlee... how can I explain this so that you'll understand?                       # v_tractor_stagefour_oh_carlee_how
    We are all products of our environment.                                                 # v_tractor_stagefour_products
    You are no exception; I am no exception. We can't choose to be otherwise.               # v_tractor_stagefour_you_are_no_exception
    But we do have to accept that there are certain truths about ourselves that determine our place in society. # v_tractor_stagefour_but_we_do
    When people undermine or question those things, those 'maxims', that people have taken for granted our entire lives...  # v_tractor_stagefour_when_people
    It's common to... Agress.       # v_tractor_stagefour_its_common
    It can be frightening. I believe one scholar called it 'taking the red pill'.       # v_tractor_stagefour_its_can_be
    But I promise you Carlee, I'm not saying this to hurt you or to be an 'asshole'.    # v_tractor_stagefour_but_i_promise
    Someday, you'll thank me.                                                           # v_tractor_stagefour_someday
    ** Sure.
        I get it. You don't believe me yet.             # v_tractor_stagefour_i_get_it
        I understand.                                   # v_tractor_stagefour_i_understand2
    ** No, I don't think I will.
        I understand why it feels that way.             # v_tractor_stagefour_i_understand_why
        I had the exact same conversation with one of my coworkers the other day and he behaved in the exact same way.  # v_tractor_stagefour_i_had_the
        He actually _plays_ Tractor Dad 3.      # v_tractor_stagefour_he_actually_plays
        I asked him what drove this base desire of his and you'll never guess what he said. # v_tractor_stagefour_i_asked_him
        He told me he grew up with games like Tractor Dad... so of course he likes them!    # v_tractor_stagefour_he_told_me
        It's funny, the little games the mind plays.                                        # v_tractor_stagefour_its_funny
        He was trying to tell me he was more than just a product of his environment but admitted to his own subservience to the media!  # v_tractor_stagefour_he_was_trying
        I shouldn't laugh but I have a sort of macabre sense of humour about these things.  # v_tractor_stagefour_i_shouldnt_laugh
        *** I still don't see what's wrong with Tractor Dad.
        *** So you gave him a lesson too?
            Ha! I see what you're trying to say.                    # v_tractor_stagefour_ha_i_see
            Your wit is definitely improving. I like it.            # v_tractor_stagefour_your_wit
            But no, I couldn't. He reminded me of Henry, if you can believe it. # v_tractor_stagefour_but_no
            No real depth; no real potential.                       # v_tractor_stagefour_no_real_depth
            Just another well-oiled cog that's gotten more than its fair share of spinning.  # v_tractor_stagefour_just_another
            Speaking of Henry: the wedding.                         # v_tractor_stagefour_speaking
            -> wedding
        *** Why are you like this?
            It's like you haven't been listening at all!            # v_tractor_stagefour_its_like
            You need to... learn to take criticism.                 # v_tractor_stagefour_you_need_to
            Embrace it. Inspect it.                                 # v_tractor_stagefour_embrace
            Treat it with curiosity instead of judgement or... or projections of your own internalized shame.   # v_tractor_stagefour_treat_it
            -> patterns
        *** ...
    ** I can not believe you right now.
        And I couldn't believe all this before.                     # v_tractor_stagefour_and_i_couldnt
        But in time I did and you will.                             # v_tractor_stagefour_but_in_time
        I have been so patient with you; you just have to show some patience with me.   # v_tractor_stagefour_so_patient
        *** Sure.
            I love you, Carlee.                                     # v_tractor_stagefour_i_love_you
            I really do.                                            # v_tractor_stagefour_really_do
            Anyway.                                                 # v_tractor_stagefour_anyway_2
            -> random_topic
        *** No.
            -> breakup
        *** I can't do this anymore.
            -> breakup
        *** That is not what I meant.
            I know but I was trying to take that negativity and turn it into a positive.    # v_tractor_stagefour_i_know_2
            You keep trying to do the opposite! It's frustrating, Carlee.                   # v_tractor_stagefour_you_keep
            I am trying here. I'm really trying.                                           # v_tractor_stagefour_i_am_trying
            -> patterns
        *** ...
    ** ...
    -- I know it's a lot to take in and I don't need an answer now.                         # v_tractor_stagefour_i_know_it
    Why don't I give you some time to digest.                                               # v_tractor_stagefour_why_dont
    -> random_topic