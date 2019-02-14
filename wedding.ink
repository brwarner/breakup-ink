/*
    Wherein the antagonist complains about
    his cousin, Henry, will have a wedding.
    Fuck that guy.
*/
== wedding ==
~ last_topic = "wedding"
~ in_breakup = false
{
- not stage_one: ->stage_one
- not stage_two: ->stage_two
- not stage_three: ->stage_three
- else: -> stage_four
}

= stage_one
Speaking of which, my cousin Henry's wedding is coming up.              # v_wedding_stageone_speakingof
I think I've said this before, but I'd like you to come.        # v_wedding_stageone_said_this_before
But we need to think of something you can wear...                                   # v_wedding_stageone_something_to_wear
- (wear)
<- silence(->wear)
* {lacy} Do you not trust me?
    No, I... It's just...                                       # v_wedding_stageone_no_i_just
    I know things are very different in your circles. Very blase, very free, and everything and I support that; I really, really do.  # v_wedding_stageone_very_different
    And you know if it were my wedding, and it were free of judgement, none of this stuff would matter.     # v_wedding_stageone_if_it_were_my
    I would want us to be authentic. I would want our wedding to be a microcosm of our bond in which our real selves would shine true, but...   # v_wedding_stageone_want_us_authentic
    ** Is this really important to you?
    ** I'll come up with something.
    ** ...
* {havent} You just told me about.
    Carlee, I-- _Sigh_          # v_wedding_stageone_carlee_i_sigh
    You're right. I'm sorry, it's just-- I just want to know what our options are.  # v_wedding_stageone_youre_right_im_sorry
    ->wear
* {havent} I know how to pick out clothes.
    ...
    ** I've been dressing myself for over 20 years.
        --- (howmany) {stopping: 
            - Okay, but how many weddings have you been to?         # v_wedding_stageone_ok_but_how_many
            - How many weddings have you been to?                   # v_wedding_stageone_how_many
            }
        <-silence(->howmany)
        *** Two.
            ---- (two) Okay, but how about real weddings?           # v_wedding_stageone_real_weddings
            **** What is a real wedding?
                Not your cousin's.                                  # v_wedding_stageone_not_cousins
            **** ...
                And before you say it, your cousin's does not count. # v_wedding_stageone_cousin_doesnt_count
            ---- You don't get married in a sundress. I mean, some people do, and I'm not against it; I'm not trying to shame anyone, however.  # v_wedding_stageone_sundress
            My family does shame. Everyone. And whether we or anybody else likes it, that's the game. Those are the rules we're playing under. It's the reality we live in. Judgement and shame are in the cards.  # v_wedding_stageone_shame
            And I don't agree with it. I think it is stupid, and shallow, and petty.    # v_wedding_stageone_agree_with_it
            And it's not you. You are amazing, and beautiful, and-- and far kinder than anyone deserves.    # v_wedding_stageone_not_you
            And I want them to see that, but they are so blind it will take something of blinding class and propriety to get through their... misogynistic skulls.  # v_wedding_stageone_see_that
            ---- (skulls) {stopping: 
                - 
                - Please, work with me. # v_wedding_stageone_work_with_me
                }
            <-silence(->skulls)
            **** It sounds like this is very important to you.
                Uh it is. I--  # v_wedding_stageone_it_is_i
                ...
            **** What do you want me to wear?
                I want... Oh!  # v_wedding_stageone_i_want_oh
            **** I don't want to go.
                What? You have to go. I've already told them about you; they know about you.    # v_wedding_stageone_what_you_have
                If you're not there, they're going to notice and say something and they're going to think that we're just another failure and this is not a failure.    # v_wedding_stageone_if_not_there
                ...
        *** None, apparently.
            Sass? Really?       # v_wedding_stageone_sass_really
            **** You're being an idiot.
                This is not some trifle, Carlee. Ugh.   # v_wedding_stageone_youre_being_idiot
                Ugh. I--                                 # v_wedding_stageone_i_ugh
            -> patterns
            **** I've been to two.
                -> two
            **** ...
                -> patterns
        *** Is there something you want me to wear?
            Yes! I mean-- I'm... _Sigh_                 # v_wedding_stageone_yes_i_mean
            -> lookingfor
    ** ...
        -> patterns
* (havent) I haven't thought about it yet.
    ...
    The wedding is in two weeks, Carlee.                # v_wedding_stageone_two_weeks
    ->wear
* (lacy) Lacy and I are hitting the mall.
    That's good; that's great. Lacy has exquisite taste. But do you know what you're going for?     # v_wedding_stageone_thats_good_great
    The theme? The thrust? The quintessence of your outfit?                                       # v_wedding_stageone_the_theme
    ->wear
* The dress I wore to our second date?
    Oh my god yes. That dress. Do you remember that date?                                           # v_wedding_stageone_oh_my_god_yes
    -> thatparty
* What are you looking for?
    -- (lookingfor) I'm looking for... ack. I don't know how to say it. Or should I say, I don't know how to say it well.   # v_wedding_stageone_im_looking_for
    I grew up submersed in this sort of stuff--drowned in it but I was never socialized to understand just grasp at expectations I could never reach or even put words to.  # v_wedding_stageone_i_grew_up
    ** Is everything okay?
    ** Josh?
    ** We don't talk about your family much.
    ** ...

- -> stage_two
= stage_two // The part with the dress
You know what? _Snap_ That dress!                           # v_wedding_stagtwo_you_know_what
Do you remember the one you wore on our second date?        # v_wedding_stagtwo_do_you_remember
- (thatparty) At that party where me met all those entrepreneurs and everyone was so fascinated and dazzled with you.   # v_wedding_stagtwo_at_the_party
You were enchanting and respectable. They couldn't stop asking questions about you, and me with you, and me.            # v_wedding_stagtwo_you_were_enchanting
We were a hit.                                              # v_wedding_stagtwo_we_were_a_hit
* Were we?
    We were.                                                # v_wedding_stagtwo_we_were
    -- (imposter) Don't let your imposter's syndrome take this away from you. We were awesome, and not in the diluted sense of that word. Awe. Real awe.    # v_wedding_stagtwo_imposter
* I remember feeling a little uncomfortable.
    I know. Some of those guys seemed to edge in a little too closely. Girls too, even.     # v_wedding_stagtwo_some_guys
    When you have two people standing right next to each other and the converser only engages one, you know something is up.    # v_wedding_stagtwo_two_people
* I still have it.
    Good. It would be a tragedy if you'd ripped it up or thrown it away.                   # v_wedding_stagtwo_good_tragedy
* ...
    I know you don't think so and I know that the attention sometimes makes you a little uncomfortable, but     # v_wedding_stagtwo_i_know_you
    -> imposter

- I just know when we get to Henry's wedding, though, there's going to be a barrage of questions.           # v_wedding_stagtwo_i_just_know
What am I doing, where am I at, where are _we_ at. It'll be a torrential downpour.                          # v_wedding_stagtwo_what_am_i_doing
* Does that bother you?
    ...
    No, it doesn't. And why should it? I know I have value. I partake in activities that are meaningful.    # v_wedding_stagtwo_no_it_doesnt
    Their understanding isn't needed, or even desired.                                                      # v_wedding_stagtwo_their_understanding
    I find the whole song and dance frustrating. They want results; results take time.                      # v_wedding_stagtwo_i_find_the_whole
    They have no patience.                                                                                  # v_wedding_stagtwo_no_patience
* Is that why you want me to come?
    I want you to come because what I do is meaningful. And you have meaning to me.                         # v_wedding_stagtwo_i_want_you
    And I want them to see us. I am proud of us.                                                            # v_wedding_stagtwo_see_us
    You're my anchor, and I need you to weather this storm. They're a cyclone of queries, responsibilities, and engagements.   # v_wedding_stagtwo_my_anchor
    Everything is invisible moves, a tacit decorum, like chess where the board is flipped upside-down and you're just guessing. I don't want to guess.  # v_wedding_stagtwo_invisible_moves
* I don't think I want to come.
    ...
    What do you mean? You have to come.         # v_wedding_stagtwo_do_you_mean
    -- (haveto)
    ** I don't want to go.
        Carlee, we _have_ to go.                # v_wedding_stagtwo_carlee_we_have
        *** You have to go. I'm my own person.
        *** Neither of us have to go.
            Neither of us-- do you even know what you're saying.        # v_wedding_stagtwo_neither_of_us
            Ugh. Look, just-- let's talk about something else okay?     # v_wedding_stagtwo_ugh_look
            This is too heated for me right now. We can figure this all out later.  # v_wedding_stagtwo_too_heated
            **** I want to break up with you
                ->breakup
            **** ...
                -> random_topic
        *** I want to break up with you.
            -> breakup
        *** ...
            Listen, why don't we talk about this at a later date. So much is going on and I have so much on my mind right now.      # v_wedding_stagtwo_listen_why
            Let's just take a break and talk about something else.                                                    # v_wedding_stagtwo_lets_just
            **** I want to break up with you
                ->breakup
            **** ...
                -> random_topic
    ** This whole thing is making me uncomfortable.
        What? What is making you uncomfortable?                                     # v_wedding_stagtwo_what_what_is
        Is it--Is it my family?         # v_wedding_stagtwo_my_family
        *** It's not your family. It's you.
            -> breakup
        *** I feel like a prop.
            That's how they see everything. Why do you think 'decorum' and 'decoration' share the same root.            # v_wedding_stagtwo_thats_how
            It's all about dressing up and fawning over each other's myopic and self-serving accomplishments.           # v_wedding_stagtwo_dressing_up
            And not because you actually like them--oh, no--but because you just know the gesture of appreciation will garner you some status or favour.    # v_wedding_stagtwo_not_because
            It's disgusting and it's wrong and I want nothing to do with it.        # v_wedding_stagtwo_disgusting
            ...
            I hate the way they see me.                                             # v_wedding_stagtwo_hate_the_way
        *** ...
            Look, I will stand guard between you and them every step of the way.    # v_wedding_stagtwo_stand_guard
            They are self-obsessed fools who will addle even the most well-adjusted person into agonizing over a dozen projected inadequacies.  # v_wedding_stagtwo_self_obsessed
            We don't have to talk about them anymore. They don't deserve it.        # v_wedding_stagtwo_we_dont
            -> random_topic
    ** I don't think I want to be with you anymore.
        ->breakup
    ++ ...
        {stopping:
        - Carlee. You can't not go to this thing.               # v_wedding_stagtwo_carless_you_cant
        - Carlee. I've already told them you're coming.         # v_wedding_stagtwo_i_told_them
        - Carlee. This isn't a game.                            # v_wedding_stagetwo_not_a_game
        - ... 
        ->patterns
        }
        -> haveto
* ...

- Ugh. Anyway, we've figured out the attire. We don't need to indulge them anymore.     # v_wedding_stagetwo_ugh_anyway
I'm thankful to have this off my plate. Let's talk about something else.                # v_wedding_stagetwo_thankful
-> random_topic

= stage_three // Wherein he talks about how long Henry has been together
Did you know my cousin has only known his fiance for three years?                       # v_wedding_stagethree_did_you_know
- (longtime) {stopping: 
- How can anyone know after three years who it is they want to marry?                   # v_wedding_stagethree_how_can_anyone
- Three years is not a long time to know someone.                                       # v_wedding_stagethree_three_years
}
<-silence(->longtime)
* Three years is a long time.
    Yes, it is but only if you delve deeply into your interactions.                # v_wedding_stagethree_yes_it_is
    -- (wading) 
    {stopping:
        - I don't see their relationship that way. I see it as more wading in shallow waters.   # v_wedding_stagethree_i_dont_see
        - I said, I see their relationship as wading through shallow waters.                    # v_wedding_stagethree_i_said_i_see
    }
    <-silence(->wading)
    ** How do you figure?
        Occupation is a very big part of it and the judgement thereof is an occupational hazard in my family.      # v_wedding_stagethree_occupation
        They're all very rich, not that they see themselves that way. My mother came from a meager but traditional background.  # v_wedding_stagethree_all_very_rich
        My father is a doctor, and so is my cousin now. Different sorts, but I don't pay enough attention to know how.  # v_wedding_stagethree_my_father_is
        It's beneath me to compare.                                                                                     # v_wedding_stagethree_beneath_me
        *** Aren't you comparing right now?
            What?                                           # v_wedding_stagethree_what
            **** This whole 'three years' thing.
            **** Sorry, nothing. I'm just tired.
                It's okay.                                  # v_wedding_stagethree_its_okay
            **** ...
            ---- I'm not comparing; I'm just remarking.     # v_wedding_stagethree_not_comparing
            It strikes me as very superficial and I can't understand why everyone glorifies it.     # v_wedding_stagethree_strikes_me
            It's frustrating, is all.                                                               # v_wedding_stagethree_frustrating
        *** Maybe best to move on.
            Yes. Yes, exactly. You're right.                                                        # v_wedding_stagethree_yes_yes
            -> random_topic
        *** ...
            ---- (doyoucare) 
            {stopping: 
                - Don't tell me you care about this kind of stuff.                                  # v_wedding_stagethree_dont_tell_me
                - You're not one of those materialistic girls, are you?                             # v_wedding_stagethree_youre_not
            }
            <-silence(->doyoucare)
            **** What?
            **** I don't know your family.
            **** I like some things, I guess.
            ---- Jess-- I mean, Carlee, I'm kind of disappointed in you. You need to fight back against those parasitic urges society has planted in your mind. They make you act like some kind of fembot.                                                      # v_wedding_stagethree_jess_i_mean
                Here: I am going to remind you every morning I see you wearing some gaudy thing or being strung like a puppet toward those trashy women's books at the department store, that you're being used.                                          # v_wedding_stagethree_here_i_am
                I don't want to be sleeping with someone who doesn't have a mind of their own.          # v_wedding_stagethree_sleeping_with
                I'm a feminist.                                                                         # v_wedding_stagethree_feminist
    ** That's sort of judgemental
        I feel as though the word 'judgemental' is thrown around a lot these days, and treated as a pejorative. But is it so wrong to judge others?     # v_wedding_stagethree_word_judgement
        *** Yes.
            I do not think that's true.     # v_wedding_stagethree_do_not_think
        *** If they're not hurting anyone.
            If they're not hurting anyone, maybe. Their actions may not, but the message does.      # v_wedding_stagethree_if_theyre_not
            It frustrates me to know they are perpetuating these superficial attachments and give currency to the idea that aspirations are only for goals which garner rubber stamps.       # v_wedding_stagethree_it_frustrates
            I don't need those sorts of things. My projects come from a place of earnest sincerity.     # v_wedding_stagethree_dont_need
            ->healthvetica
        *** ...
        --- I think some people need to be judged. I think that's how we make things better.           # v_wedding_stagethree_some_people
            I think my cousin, his fiance, their family, my family: I think they squander time; I think they tarnish love.    # v_wedding_stagethree_cousin
            And they try to make me do the same.                                                        # v_wedding_stagethree_try_to_make_me
            They want me to spend my life as a drone grinding out app after shitty app.                 # v_wedding_stagethree_drone
            -> tractor_dad
* My parents got married after only one year
    Yes, I know. Role models.                                                                           # v_wedding_stagethree_role_models
    ** Was that sarcasm?
        Haha 'Was that sarcasm?' Really?                                                                # v_wedding_stagethree_sarcasm
        No. Of course it wasn't. It was very earnest, Carlee. Really.                                   # v_wedding_stagethree_no_of_course
        *** You don't have to be an asshole.
            ---- (asshole) I'm not being an asshole. I'm sorry.                                         # v_wedding_stagethree_not_being_asshole
        *** They're doing well.
            Everyone is doing well, it seems. Not me.                                                   # v_wedding_stagethree_everyone
            I guess that's the mark of the road less travelled: onus.                                   # v_wedding_stagethree_road_less
            Empathy is my albatross. Selfish people have it easy.                                       # v_wedding_stagethree_empathy
            -> stage_four
        *** ...
            I'm just thinking of my own future. I don't want to dwell on others.                        # v_wedding_stagethree_thinking_of_my_future
        --- When I get married, though, it'll be with someone for whom I love deeply and who loves me deeply in return. # v_wedding_stagethree_get_married
            I will be the pit they fall in, and in the chasm of my heart there will be no bottom.  # v_wedding_stagethree_pit_they_fall_in
    ** You don't have to be an asshole.
        ->asshole
    ** I think so.
        You do.                                                                                         # v_wedding_stagethree_you_do
    ** ...
        Anyway, I don't want to dwell on someone else's relationship.                                   # v_wedding_stagethree_anyway_dwell
* How long would you wait?
    ...
    With you?                                                                                           # v_wedding_stagethree_with_you
    ** What does that mean?
        Oh, I just mean--                                           # v_wedding_stagethree_i_just_mean
        --- (spot) You're really putting me on the spot here.       # v_wedding_stagethree_spot_here
        *** Oh. That's not what I meant.
            Haha. It's fine.                                        # v_wedding_stagethree_haha_its_fine
        *** Nevermind. 
            No, it's fine.                                          # v_wedding_stagethree_no_its_fine
        *** ...
            Well, uh.                                  # v_wedding_stagethree_well_uh
        --- (us) What to say? I feel as though there is something between us. I feel very good about us. I see us as having trajectory.  # v_wedding_stagethree_i_feel_as
    ** With anyone.
        Right.                                                      # v_wedding_stagethree_right
        Well, I--I was close once. With someone. But really, I think it's about depth more than anything.     # v_wedding_stagethree_i_was_close
        I see a lot of this marriage between my cousin and his partner as very superficial.                 # v_wedding_stagethree_i_see_a_lot
        Occupation is a big part of it.                                                                     # v_wedding_stagethree_occupation_is
        Respect, too, but not respect like the sort we have. Respect of class. Respect of tradition. Respect of stability.  # v_wedding_stagethree_respect
        Not reverence. Not love.                                                                            # v_wedding_stagethree_reverence
    ** Sure.
        Haha.                                   # v_wedding_stagethree_haha
        ->spot
    ** ...
        I, uh-- I don't know what you mean. But, well...    # v_wedding_stagethree_dont_know
        ->us

// Move onto stage 4
- ->stage_four
= stage_four
{stopping:
- ->jessica->
- {cycle: 
    - ->mom->
    - ->our_wedding->
    - ->my_wedding->
    }
    
}
+ Okay.
+ I have had enough of this.
    What?                       # v_wedding_stagefour_what
    -- (what)
    ++ I want to break up with you.
        ->breakup
    ** This conversation.
        --- (fine) ... Alright. Fine.   # v_wedding_stagefour_alright
        ->random_topic
    ++ ...
        {cycle: 
            - Carlee, what?             # v_wedding_stagefour_carlee_what
            - What are you on about?    # v_wedding_stagefour_what_are_you
            - Carlee?                   # v_wedding_stagefour_carlee
            - ->fine
            }
        -> what
+ ...
- (anyway) Anyway, I don't want to talk about this anymore. Let's discuss something else.   # v_wedding_stagefour_anyway_i_dont
->random_topic


=== jessica ===
There was a girl before you: Jessica.           # v_wedding_stagefour_jessica
- (jess) {stopping:
- Have I told you about her before?             # v_wedding_stagefour_about_her
- Have I told you about Jessica before?         # v_wedding_stagefour_about_jessica
}
<-silence(->jess)
* Yes.
* More than once.
* Probably.
- My family really wanted her and I to be together. Not because we were in love, but because it was proper.     # v_wedding_stagefour_my_family
I was the right age. They see me as too old now. I feel old.                                                    # v_wedding_stagefour_right_age
Their expectations were on me; I felt like I was enveloped by a thick smog.                                     # v_wedding_stagefour_expectations
I couldn't see; I couldn't breathe. How was I to focus on what I wanted?                                        # v_wedding_stagefour_couldnt_see
* Right.
* I can relate to that.
* Can we talk about something else?
    Just give me a sec.                             # v_wedding_stagefour_give_me_a_sec
+ ...
- Maybe things could have worked out with her. Maybe it could have been love.   # v_wedding_stagefour_maybe_things
If it had been given a chance. And by that, I mean if they had given me a chance. A chance to see for myself.   # v_wedding_stagefour_given_a_chance
That's on them. That is on them.                    # v_wedding_stagefour_thats_on_them
->->

=== mom ===
You know my Mom told me that they've paid to take the entire wedding party on vacation in Europe.           # v_wedding_stagefour_my_mom
How can you do that and still pretend something like that is love?                           # v_wedding_stagefour_how_can_they
That's just extravagance. Flaunting wealth. Do they think I'll be so easily impressed?                      # v_wedding_stagefour_extravagance
Ugh.                                                                                                        # v_wedding_stagefour_ugh
->->

=== our_wedding ===
Carlee, I hope you know that we're not going to have anything like my cousin's wedding. If we get married, we're just going to run off and have it done at city hall.   # v_wedding_stagefour_carlee_i_hope
No pomp. No circumstance. And certainly no family.              # v_wedding_stagefour_no_pomp
It would be just about us. You and me. No one else will matter.  # v_wedding_stagefour_just_about_us
They can say what they want. I don't care.                      # v_wedding_stagefour_they_can_say
->->

=== my_wedding ===
It just riles me up to think that this could have been my wedding.          # v_wedding_stagefour_riles_me_up
Not that it matters. This is all just flash: for show.                      # v_wedding_stagefour_not_that_it
Everything they do is for show. They are showing off to me. Bragging to me. # v_wedding_stagefour_everything
They want me to feel this way, you know? And I'm not going to give them the satisfaction.   # v_wedding_stagefour_feel_this_way
->->

-> END