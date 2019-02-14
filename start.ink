/*
    Story entry point.
*/
-> start

// Includes
INCLUDE silence.ink
INCLUDE tractor_dad.ink
INCLUDE healthvetica.ink
INCLUDE breakup.ink
INCLUDE patterns.ink
INCLUDE hangup.ink
INCLUDE wedding.ink
INCLUDE externals.ink
INCLUDE random_topic.ink

VAR sent_nurse = false
VAR actually_played_game = false


// Story starts here.
== start ==
~ temp initial_calls = 0

-> incoming_initial_call

= incoming_initial_call
~ initial_calls = initial_calls + 1
pre-delay #null
{initial_calls <= 1:
~ delay(30)
-else:
~ delay(20)
}
pre-call #null
~ call()
pre-call_return #continue
{ call_return():
-0:
	{ initial_calls > 1:
    -> late_answer
    - else:
    -> answer
    }
-1:
    ->END
-else:
-> incoming_initial_call
}

= late_answer
~ enable_block()
Hey. #v_start_hey_period
Is everything alright? You didn't answer right away. # v_start_alright
<-silence(->continue_anyway)
* It's fine.
    That's good to hear. # v_start_good_to_hear
    -> answer.just_had
* I just got home.
    Oh, good. I caught you just in time.    # v_start_oh_good
    -> answer.just_had
* Sorry, just tired.
    I'm sorry to hear that. I'm exhausted too. # v_start_sorry
    -> answer.just_had

- (continue_anyway) Anyway, thanks for picking up. # v_start_anyway
-> answer.just_had

= answer
~ enable_block()
Hey! # v_start_hey_exclamation
- (just_had) I just had... A week. I would call it a _week_. # v_start_week
* Oh?
    -- (oh) Yeah.   # v_start_yeah
* Yeah?
    -> oh
* Same.
    Well, then you'll appreciate this.  # v_start_well
* ...
- (jim_came) Jim came over to my desk today--second time this week--to tell me, again, to put Healthvetica to rest. # v_start_jim_desk
* That sucks.
* Jim?
    ...
    Yeah.       # v_start_yeah_2
    -- (jim) {stopping:
        - Jim.              # v_start_jim
        - Don't you remember Jim?   # v_start_remember_jim
        }
    <-silence(->jim)
    ** (ask_jim) You've mentioned him before?
        ...
        He's my boss, Carlee. I mention him all the time.           # v_start_my_boss
        The Doctor who's always bitching at you's name is Jeremy Price. You've mentioned him once.      # v_start_the_doctor
        -> jim
    ** (late) Sorry, it's really late.
        { ask_jim: 
            Right. You're right. I'm sorry. I'm just really riled up.       # v_start_right_sorry
            - else: 
            That's fine, I get it.                                          # v_start_thats_fine
            }
    ** Right. Sorry. Healthvetica?
        -> health
* Healthvetica?
    -- (health) Yeah... my fitness app. I've told you about this before.    # v_start_my_fitness_app
    { ask_jim: 
        - Definitely more than I've told you about Jim.                     # v_start_definitely
    }
    And, you know I've been working hard on this.                           # v_start_hard_on_this
    -> pushing
* ...
- And, I mean... you know that I've been working hard on this.              # v_start_hard_on_this_2
-> pushing

= pushing
You know I've been pushing this.                                        # v_start_pushing
And Jim. Oh God, Jim. Does he ever know that I have _bled_ for this.       # v_start_bled_for_this
I know I've said this a million times, but I just feel as though we are all trapped in this...  # v_start_million_times
In this... In this toxic culture, around health, you know?                  # v_start_toxic_culture
And for Jim to just dismiss that, without consideration, without even trying to claw out the manure that's been crusting in his ears, and has been crusting in everyone's ears, without even giving me the chance?                     # v_start_dismiss_that
{ not sent_nurse:
~ get_message("N. Chapel", "Confirmed. I'll be there.")
~ sent_nurse = true
}
I mean...                                                                   # v_start_i_mean
~ actually_played_game = true
- (what_kind) Well, what kind of person does that make him, right?          # v_start_kind_of_person
- (what_kind_2)
<- silence(->what_kind)
* Did he say why?
    Yes. He wants "Tractor Dad" pushed out the door.                        # v_start_tractor_dad
    -> tractor_dad
* Yeah, sounds like a bit of a jerk.
    Jerk. That's a good word; it doesn't waste your time.                   # v_start_jerk
    He doesn't deserve more time than that.                                 # v_start_deserve_more
    And to have all that going on and all the stuff with Henry.                # v_start_henry
    -> wedding
* Yeah, I don't know. It takes all kinds I guess.
    And this is my dream he's tossing around. Which is so... Ugh.            # v_start_my_dream
    Healthvetica. I just need to focus on Healthvetica.                     # v_start_healthvetica
    -> healthvetica
* Hmm
    Oh, come on Carlee. This is important.                                  # v_start_come_on_carlee
    -> what_kind_2