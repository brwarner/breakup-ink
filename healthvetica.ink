/*
    Wherein the antagonist goes on and on 
    about his "not a fitness tracker" app:
    Healthvetica.
    ...
    It's the Helvetica of Health apps.
*/

VAR s3_count = 0
VAR imagine_count = 0

== healthvetica ==
~ last_topic = "healthvetica"
~ in_breakup = false
{
- not stage_one: ->stage_one
- not stage_two: ->stage_two
- else: -> stage_three
}

= stage_one
Did I ever tell you where this all came from and why? Why Healthvetica?                             # v_healthvetica_stageone_did_i
// Why Healthvetica?                                                                                   # v_healthvetica_stageone_why
I feel like I've put all the pieces down, but there's something holding me back.                    # v_healthvetica_stageone_pieces
* Yeah?
    Yeah. It's torturing, really. I feel exhausted all the time.                                    # v_healthvetica_stageone_torturing
    I'm constantly asked at work to give, give, and give and for what?                              # v_healthvetica_stageone_constantly
    Mindless tripe and the ceaseless backtalk from prosaic simpletons.                              # v_healthvetica_stageone_mindless
    It's just so difficult for me to put my heart out there, you know?                           # v_healthvetica_stageone_difficult
* Is something wrong?
    Maybe... Look, we can talk about that later. I really want to talk to you about Healthvetica.   # v_healthvetica_stageone_maybe_look
* You don't have to tell me all this.
    I do. You're so important to me, Carlee. And so is Healthvetica.                                # v_healthvetica_stageone_i_do
* I think you've said that more than once.
    I'm sorry. I'm passionate. It means the world to me and I want you to be a part of it.          # v_healthvetica_stageone_im_sorry_im
* ...
- This is the brainchild of years of casual observation and more formalized research.               # v_healthvetica_stageone_brainchild
- (helvet) {stopping:
- It is the Helvetica of Healthcare apps.                                                           # v_healthvetica_stageone_helventica
- I think you missed this but I said it is the Helvetica of Healthcare apps.                        # v_healthvetica_stageone_missed_it
}
<- silence(->helvet)
* Helvetica?
    Helvetica. The typeface?                   # v_healthvetica_stageone_helventica_typeface
    It's the one that's captured the hearts of millions. And Healthvetica will save those hearts.                                                        # v_healthvetica_stageone_healthvetica_hearts
    It's the companion piece to that minimalist, sans-serif perfection.                             # v_healthvetica_stageone_companion
    ** Alright. I can tell this is important to you.
        It is. It is important to me.                                                               # v_healthvetica_stageone_important
        I wish my family could see that.                                                            # v_healthvetica_stageone_wish
        -> wedding
    ** But what does it do?
        What does it do?                                                                            # v_healthvetica_stageone_what_does
        -> stage_two.entry
    ** It's a fun name.
        It's not just a name, Carlee. This isn't just some hip marketing campaign.                  # v_healthvetica_stageone_not_just_name
        I'm not trying to leech off the masses like Tractor Dad.                                    # v_healthvetica_stageone_leech
        {not tractor_dad: 
            - Speaking of which, Jim wants that out the door. It's taken precedence over everything.# v_healthvetica_stageone_speaking_of_which
        }
        -> tractor_dad
    ** ...
        ...
        Do you like the name?           # v_healthvetica_stageone_like_name
        *** Yeah.
            ...
        *** It's decent.
            ... "Decent"?               # v_healthvetica_stageone_like_decent
        *** I love it.
            Good. Good, I'm glad. I took a lot of care with it and it really is the distillation of everything I believe in when it comes to this project.  # v_healthvetica_stageone_good_good
            Not that I've... you know, told my family yet.    # v_healthvetica_stageone_not_that_ive
            -> wedding
        *** ...
        --- -> patterns
* It's a fitness tracker, right?
    -- (reductive) {stopping:
        - That's reductive.                     # v_healthvetica_stageone_reductive
        - It's not just a fitness tracker.      # v_healthvetica_stageone_fitness
    }
    <- silence(->reductive)
    ** {reductive == 1} You're reductive.
        --- (what) What?                        # v_healthvetica_stageone_what
        *** It's a joke.
            You are... very 'odd' sometimes.    # v_healthvetica_stageone_odd
            -> stage_two
        *** I'm sorry. I'm really tired.
            That's okay; you can just listen. That's what I'm looking for right now.            # v_healthvetica_stageone_thats_ok
            My father probably wouldn't have even picked up the phone.                          # v_healthvetica_stageone_my_father
            -> wedding
        +++ (joke_silence) ...
            {joke_silence > 2: 
                ... Carlee...           # v_healthvetica_stageone_carlee
                -> patterns
            -else:
                ...
            }
            -> what
    ** Then what is it?
        -> stage_two
    ** You've never said what is actually is.
        Okay.                                       # v_healthvetica_stageone_okay
        -> stage_two

= stage_two
Where did I leave off here? Right.                                                          # v_healthvetica_stagetwo_where_did
- (entry) Healthvetica bridges the gap between healthcare providers and patient.           # v_healthvetica_stagetwo_healthvetica
It's a marriage that these two groups shouldn't need an app for, but in our world do.       # v_healthvetica_stagetwo_marriage
- (tearing) {stopping:
- It's about tearing down.                  # v_healthvetica_stagetwo_tearing
-
}
* Tearing down what?
    Everything. We have all these services, all these consultations, all these seminars where we try to disseminate and cure.   # v_healthvetica_stagetwo_everything
    But what happens? Still one health crisis after another. The market needs disruption.                                       # v_healthvetica_stagetwo_but_what
* How is that not just a health tracker app?
    It's not just about tracking, it's about networking. It's about making it easier to find care. It's about sharing data, and removing barriers.  # v_healthvetica_stagetwo_tracking
    -> tearing
* I'm in healthcare.
    -- (know) {stopping:
    - I know.                   # v_healthvetica_stagetwo_i_know
    - 
    }
    ** So you can be specific.
        I am.                   # v_healthvetica_stagetwo_i_am
        -> know
    ** Okay.
        Okay?                   # v_healthvetica_stagetwo_okay_question
        *** Just keep going.
            Okay.               # v_healthvetica_stagetwo_okay
        *** I feel like you don't really respect me.
            What? Why do you think I'm talking to you? I respect you more than...       # v_healthvetica_stagetwo_what_why
            **** Don't say anyone else.
                What do you mean "don't say anyone else"? That is the whole point of being in a relationship: caring for each other. Putting each other first.  # v_healthvetica_stagetwo_what_do_you
                Of course I respect you more than anyone else.  # v_healthvetica_stagetwo_of_course
                ***** We've only been going out for a few months.
                    Carlee, when I put a part of myself into something, I put in my whole self.     # v_healthvetica_stagetwo_carlee_when
                    Healthvetica. You.                                                              # v_healthvetica_stagetwo_healthvetica_you
                    I have a big heart and I... give it away. Sometimes, maybe a little too easily.# v_healthvetica_stagetwo_big_heart
                    ****** I want to break up with you.
                        -> breakup
                    ****** I'm sorry.
                    ****** ...
                    ------ -> patterns
                ***** I feel like you don't show it
                    -> patterns
                ***** ...
                    -> patterns
            **** I feel like you don't show it.
                -> patterns
            **** ...
                ... Anyone else, really. If I lose you, that's it.                                              # v_healthvetica_stagetwo_anyone_else
                That's why this relationship is so important to me. That's why you are so important to me.     # v_healthvetica_stagetwo_relationship
                ***** Okay.
                ***** I want to break up with you.
                    -> breakup
                ***** ...
                ----- Thank you for listening.                      # v_healthvetica_stagetwo_thank_you_for
        *** ...
            I don't really understand, but look:                    # v_healthvetica_stagetwo_i_dont_understand
    ** ...
        This is why it's so important for me to get your feedback.  # v_healthvetica_stagetwo_this_is_why
* ...
- -> stage_three

= stage_three
{cycle:
    - What if Healthvetica was on the cloud?                        # v_healthvetica_stagetwo_cloud
    - What if Healthvetica used Big Data.                           # v_healthvetica_stagetwo_big_data
    - What if Healthvetica was open source?                         # v_healthvetica_stagetwo_open_source
    - What if Healthvetica ran cross-platform?                      # v_healthvetica_stagetwo_cross_platform
    - What if Healthvetica used NFC?                                # v_healthvetica_stagetwo_nfc
    - What if Healthvetica was funded wholly through Patreon?       # v_healthvetica_stagetwo_patreon
    - What if I got Healthvetica on Kickstarter?                    # v_healthvetica_stagetwo_kickstarter
}
{cycle: 
    - That would be a game changer.                                # v_healthvetica_stagetwo_game_changer
    - Imagine that.                                                 # v_healthvetica_stagetwo_imagine_that
    - I could make it happen.                                       # v_healthvetica_stagetwo_i_could
    - It'd be tough, but I'm sure there's an angle there.           # v_healthvetica_stagetwo_itd_be_tough
}
* Have you even given any thought to the interface?
    ~ s3_count = s3_count + 1
    Wow Carlee, you almost sound like you're in "the bizz". Haha.   # v_healthvetica_stagetwo_wow_carlee
    I must really be rubbing off on you, which is nice.             # v_healthvetica_stagetwo_rubbing_off
    It makes me feel like... like I'm accomplishing something here... with you. # v_healthvetica_stagetwo_accomplishing
    Together.                                                       # v_healthvetica_stagetwo_together
* How much more is there to go?
    ~ s3_count = s3_count + 1
    Everyone always wants to ask: "How much code have you written? Where are the architecture notes? Show me the diagrams!"     # v_healthvetica_stagetwo_everyone_always
    No one measures what you do by... by how many lives you've saved.       # v_healthvetica_stagetwo_measures
    Ingenuity can't be rushed and it's progress not reduced to numbers and reductively quantified into "productivity".  # v_healthvetica_stagetwo_ingeniuty
    It is like how many men treat their partners in sex: like a race or a challenge!      # v_healthvetica_stagetwo_partners_in_sex
    I'm not so easily egged on by my ego.               # v_healthvetica_stagetwo_egged_on
    Rome? Stone Hedge? The pyramids of Egypt?           # v_healthvetica_stagetwo_rome
    Healthvetica?                                       # v_healthvetica_stagethree_healthvetica
    These things weren't built in a day. Nevermind planned. # v_healthvetica_stagethree_built_in_a_day
* I think this might already exist.
    No, no, no, no, no, no, no. Not like this.          # v_healthvetica_stagethree_no_no_no
    Healthvetica is... It's so much grander than people think. So much more profound than they can know.        # v_healthvetica_stagethree_healthvetica_is
    It's almost ethereal. ephemeral. It escapes language, maybe even for me. And I made it.         # v_healthvetica_stagethree_ethereal
    When it finally sees the light of day, people will know. They'll be able to feel something even through the coarse plastic casings of their phones. # v_healthvetica_stagethree_when_it
    I'll be vindicated. I just... I just know it. I have to be. # v_healthvetica_stagethree_vindicated
* I know a programmer who could help.
    ~ s3_count = s3_count + 1
    ... Oh?                         # v_healthvetica_stagethree_oh_question
    -- (what_friend) Who?           # v_healthvetica_stagethree_who
    -- (what_friend_2)
    <- silence(->what_friend)
    ** Just some guy.
        Oh.                         # v_healthvetica_stagethree_oh_1
    ** An old friend from University.
        Oh. I didn't know you still kept up with anyone from school.    # v_healthvetica_stagethree_didnt_know
    ** Why does it matter?
        ... It's just a question.   # v_healthvetica_stagethree_just_a_question
        <- what_friend_2
        *** So was mine.
        *** I don't want to answer.
        --- -> patterns
    -- (mention) You've never mentioned him before. # v_healthvetica_stagethree_mentioned_him
    <- silence(->mention)
    ** You didn't ask.
        Well that's not fair.                        # v_healthvetica_stagethree_thats_not_fair
        -> patterns
    ** Sometimes. It's not a big deal.
        Okay... Well...                         # v_healthvetica_stagethree_okay_well
    ** He's really important to me.
        Haha.                                   # v_healthvetica_stagethree_haha
        --- (know_better) If I didn't know any better, I'd think you were trying to make me jealous.        # v_healthvetica_stagethree_know_better
        <-silence(->know_better)
        *** That's your problem.
            ...
            -> patterns
        *** Sorry.
            That means a lot to me.             # v_healthvetica_stagethree_that_means
            I'm not trying to tell you who to be friends with or anything. I'm not that kind of guy.        # v_healthvetica_stagethree_not_trying
            But whatever, let's not dwell.      # v_healthvetica_stagethree_but_whatever
    -- How is he at programming? If you can vouch for him, I really need a developer to help me get this off the ground.    # v_healthvetica_stagethree_how_is_he
        Actually, sorry but can we put a pin in that for a minute?                      # v_healthvetica_stagethree_actually_sorry
        I've got too many things in my head that I just want to "get out there" and see how they float.     # v_healthvetica_stagethree_too_many_things
+ {s3_count >= 1} Hmm
+ {s3_count >= 2} Yeah
+ {s3_count >= 3} True
+ ...

- (imagine) Imagine this:       # v_healthvetica_stagethree_imagine_this
{cycle: 
    - Using variable statistics and actuary science,                # v_healthvetica_stagethree_variable_statistics
    - By aggregating data from millions of diverse users worldwide, # v_healthvetica_stagethree_aggregating
    - By opening up the database to all contributors, coders from all backgrounds could contribute their unique perspectives on health science.    # v_healthvetica_stagethree_opening_up
    - We'd no longer be limiting ourself to a single class of users. No matter the phone, the tablet--hell, even the wearable--you could be contributing your data to the system. # v_healthvetica_stagethree_limiting_ourselves
    - Other inventors, collaborators, employees, whoever could develop accessories that attach to your body and collect... I can't even imagine. The sky's the limit.   # v_healthvetica_stagethree_other_inventors
    - We wouldn't be subject to the whims of Big Pharma, or Big Health, or Big Anything. We'd be us, just us.   # v_healthvetica_stagethree_we_wouldnt
    - Users would be invested before the app was even released. They could comment and tell us what they're looking for from Healthvetica. People could share in my dream.  # v_healthvetica_stagethree_users_would
}
{cycle: 
    - Healthvetica could be able to predict serious health-related illnesses before they're even a reality!     # v_healthvetica_stagethree_healthvetica_could
    - The app could make unprecedented predictions.                                                             # v_healthvetica_stagethree_app_could
    - No disease would be beyond capture.                                                                       # v_healthvetica_stagethree_no_disease
    - We could know exactly what's going on with your body.                                                     # v_healthvetica_stagethree_we_could
}
* What do you mean?
    ~ imagine_count = imagine_count + 1
    I mean Healthvetica could... could analyze data across various health and social points using multi-dimensional processing to determine a possible disease. # v_healthvetica_stagethree_i_mean_healthvetica
    If the probability surpasses 100% that would mean they effectively have the disease. Even if they don't.    # v_healthvetica_stagethree_probability
    ** I think you should stick with Tractor Dad.
        Oh my god, don't get me started. I-- I really don't--           # v_healthvetica_stagethree_oh_my_god
        I don't know everything, okay? I'm figuring it out.             # v_healthvetica_stagethree_dont_know
        There is a lot out there. Too much out there.                   # v_healthvetica_stagethree_there_is_a_lot
    ** Okay, but how will this work?
        Well, it...  # v_healthvetica_stagethree_well_it
        Look, I don't know all the math yet, okay? I don't. But I refuse to... kow-tow to the crushing weight of--of negativity, alright? I'm gonna--   # v_healthvetica_stagethree_but_i_refuse
        I'm going to take a step back. I'm going to breathe.            # v_healthvetica_stagethree_step_back
        I'm going to learn things. I am going to learn everything it takes. # v_healthvetica_stagethree_learn_things
    ** I don't think that's how this works.
        How do you know?                                                # v_healthvetica_stagethree_how_do_you
        *** I work at a hospital.
            Yeah. As a nurse.                                                 # v_healthvetica_stagethree_nurse
            ---- (asnurse)
            **** {not ignorenurse} Excuse me?
                If you want me to admit it, then yes. I don't know everything. But don't pretend you do either. # v_healthvetica_stagethree_admit_it
                You act as though I haven't put any thought into this. As if these ideas are just me wanking off like all those other software wanks out there. I am not one of them.    # v_healthvetica_stagethree_you_act
                I actually care about people. And I am actually going to change the world.  # v_healthvetica_stagethree_i_actually_care
                I'm going to disrupt this industry and I am going to have an impact on these people's lives.    # v_healthvetica_stagethree_disrupt
            **** I am way too tired for this.
                I didn't ask you to get into an argument with me.           # v_healthvetica_stagethree_didnt_ask
                I'm just trying to explain my idea, okay?         # v_healthvetica_stagethree_im_just
                I don't know everything. Not yet. No one can.               # v_healthvetica_stagethree_dont_know_2
                I'm learning; I'm figuring it all out.                      # v_healthvetica_stagethree_learning
                One step at a time, okay? That's what I have to focus on. One step at a time.   # v_healthvetica_stagethree_one_step
                If I focus on everything I don't know or how far is left to go, I...            # v_healthvetica_stagethree_focus
                I am just going to focus on looking forward.                # v_healthvetica_stagethree_focus_forward
            **** Can we talk about something else?
                Sigh. Yes, fine. I don't want to fight.                     # v_healthvetica_stagethree_sigh_yes
                -> random_topic
            **** (ignorenurse) ...
                {stopping:
                    - Carlee? Are you there?                                # v_healthvetica_stagethree_carlee_are_you
                    - I didn't mean to get upset with you.                  # v_healthvetica_stagethree_didnt_mean
                    - I'm just going through this whole thing right now.    # v_healthvetica_stagethree_im_just_going
                    - This topic is very important to me.                   # v_healthvetica_stagethree_topic
                    - Carlee?                                               # v_healthvetica_stagethree_carlee_q
                    - Fine. I'm sorry. Let's talk about something else.     # v_healthvetica_stagethree_fine_sorry
                        ->random_topic
                }
                -> asnurse
        *** Do you think I'm stupid?
            What? I never said that.                                        # v_healthvetica_stagethree_what_i_never
            **** You didn't have to.
            **** Fine, whatever.
            **** You didn't have to.
            **** ...
            ---- ...
            -> patterns
        *** I guess I don't.
            Don't sell yourself short. I appreciate your input and your feelings.       # v_healthvetica_stagethree_dont_sell
            Just leave the technical stuff to me.  # v_healthvetica_stagethree_leave_technical
            High-level is what we're discussing. I'm still learning all the details, but it is going to come together.       # v_healthvetica_stagethree_learning_details
            People are going to use my app and say my name and... I am going to matter in this world, Carlee.   # v_healthvetica_stagethree_people_are
            Unlike so many others, I am going to matter.                                # v_healthvetica_stagethree_unlike_so
            -> wedding
        *** ...
    ** ...
    -- And I'm going to make a difference, okay?                                    # v_healthvetica_stagethree_going_to_make
       I'm going to have people using my app... saying my name and... and I am going to matter, Carlee. # v_healthvetica_stagethree_using_my_app
       Unlike whoever makes the next Tractor Dad, I am going to matter.                 # v_healthvetica_stagethree_unlike_tractor
       -> tractor_dad
* Isn't that just analyzing risk factors?
    ~ imagine_count = imagine_count + 1
    No, it's more than that. I mean, that's part of it, for sure.       # v_healthvetica_stagethree_more_than
    But this would be an all-encompassing health database where people could include every piece of personal health information that they feel is relevant. # v_healthvetica_stagethree_encompassing
    And Healthvetica would factor it in, make recommendations, change their life.   # v_healthvetica_stagethree_healthvetica_2
    It's all so vivid in my mind.       # v_healthvetica_stagethree_vivid
    Just talking about it here, with you, lying in bed with my eyes closed: it's almost palpable.   # v_healthvetica_stagethree_just_talking
    ** I'm glad.
        And I'm glad you're glad.       # v_healthvetica_stagethree_glad_glad
    ** ...
        Mmm.                            # v_healthvetica_stagethree_mmm
    -- I love you, Carlee.              # v_healthvetica_stagethree_love_you
    ** I...
        I know.                         # v_healthvetica_stagethree_i_know
    ** I think we should end things.
        ->breakup
    ** ...
    -- Now, let's talk about something else.    # v_healthvetica_stagethree_talk_about
    -> random_topic
* How?
    ~ imagine_count = imagine_count + 1
    I just explained how.               # v_healthvetica_stagethree_just_explained
    -- (simple) {stopping:
    - It's all very simple... or maybe just simple to me. I don't know.   # v_healthvetica_stagethree_very_simple
    - 
    }
    ** I think there are some practical aspects you haven't considered.
        What is this, an RFP? Look, I don't have all the facts on me, okay?                                                 # v_healthvetica_stagethree_rfp
        I'm not ready to defend my thesis. I'm just looking for some support while I figure it all out. Can you do that?    # v_healthvetica_stagethree_thesis
        -> simple
    ** I can't think right now. Can we talk about something else?
        _Sigh_. Sure.         # v_healthvetica_stagethree_sigh_sure
        ->random_topic
    ** I think you care more about Healthvetica than you do about me.
        --- (whatyoumean)
        {cycle:
        -   What do you mean?                       # v_healthvetica_stagethree_what_do_you
        -   Carlee, what do you mean?               # v_healthvetica_stagethree_carlee_what
        -   I want to understand what you mean.     # v_healthvetica_stagethree_i_want
        -   Carlee?                                 # v_healthvetica_stagethree_carlee_q_2
        -   Carlee!                                 # v_healthvetica_stagethree_carlee_e
        -   ->patterns
        }
        *** I mean you haven't asked me once how my day has been.
            About you? While I--                    # v_healthvetica_stagethree_about_you
        *** I mean it's all we ever talk about.
            Oh. I, uh. I understand. We can... talk about something else, I guess.  # v_healthvetica_stagethree_oh_i_uh
            -> random_topic
        *** I mean I told you I was tired but you still dumped this all on me.
            What? Look, I--                         # v_healthvetica_stagethree_what_look
        *** ...
            ->whatyoumean
        --- I spent a lot of today crying, Carlee.  # v_healthvetica_stagethree_i_spent
        I didn't want to just admit it when we started, but I was.      # v_healthvetica_stagethree_didnt_want
        I can't take this right now, do you understand? I need you.     # v_healthvetica_stagethree_cant_take
        *** I want to break up with you.
            -> breakup
        *** Fine.
            Okay. But, I can see what you're saying. Let's talk about something else.   # v_healthvetica_stagethree_okay_but
            -> random_topic
        *** ...
            ...
            ->patterns
    ** ...
        Carlee, are you listening?                  # v_healthvetica_stagethree_carlee_are_you_listening
        Sigh. I-- No. It's fine. Whatever.          # v_healthvetica_stagethree_sigh_i_no
        Let's talk about something else.            # v_healthvetica_stagethree_talk_about_something_else
        -> random_topic
+ {imagine_count >= 1} Hmm
+ {imagine_count >= 2} Yeah
+ {imagine_count >= 3} Okay
+ ...
- Phew. I need some time to digest this.            # v_healthvetica_stagethree_phew
-> random_topic