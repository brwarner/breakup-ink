/*
    The story is moved into this knot
    whenever the antagonist hangs up on us.
*/

VAR hangup_start = 0
== hang_up ==
pre-delay #null
~ delay(10)
pre-call #null
~ call()
pre-call_return #continue
{ call_return():
-0:
	-> answer
-1:
	-> END
-2:
	-> hang_up
}

= answer
{ 
- not start.what_kind and not patterns and not breakup:
-> start_hangup_response
- breakup.stage_four:
-> breakup.stage_four.poison
- breakup.stage_three:
-> hangup_let_me_finish
- breakup.stage_two:
-> breakup.stage_three
- in_breakup:
-> breakup_hangup_response
- else:
-> normal_hangup_response
}

= hangup_let_me_finish
{ hangup_let_me_finish > 2: -> breakup.stage_four.poison }
No, bitch. You're gonna let me finish. # v_hangup_no_b
-> breakup.stage_three

= hangup_mad
Do you think this is funny, huh? Do you?    # v_hangup_funny
-> breakup.stage_three

= hang_up_agitated
{ hang_up_agitated > 1: -> hangup_mad }
Are you deliberately hanging up on me?  # v_hangup_deliberately
+ I don't want to talk right now.
And you didn't think just saying that would have been more appropriate? # v_hangup_appropriate
+ I want to break up with you
-> breakup
+ ...
- -> patterns

= disconnect
{cycle:
- Hey, I think we got disconnected.             # v_hangup_disconnected
- Something's up with the signal, I think.      # v_hangup_something
- Bad reception, eh?                            # v_hangup_bad
- Is your cheek hitting the disconnect button?  # v_hangup_cheek
}
->->

= normal_hangup_response
{ normal_hangup_response + start_hangup_response > 4: -> hang_up_agitated }
->disconnect->
- (repeat)
+ That's not it.
    ... Huh?                            # v_hangup_huh
    ++ I want to break up with you.
        -> breakup
    ++ Sorry, nevermind.
        Oh, okay.                       # v_hangup_oh_okay
    ++ ...
        {stopping: 
            - Carlee?                   # v_hangup_carlee
            - Carlee, are you there?    # v_hangup_there
            - Hello?                    # v_hangup_hello
            - -> hang_up_agitated
        }
        -> repeat
+ Sorry, phone did something weird.
    No worries.                         # v_hangup_no_worries
+ Bad reception in my area.
    Yeah. Heh. We've supposedly come so far right?  # v_hangup_so_far_right
+ ...
- -> random_topic

= breakup_hangup_response
{ breakup_hangup_response > 1: ->hangup_mad }
You hung up on me!                                  # v_hangup_you_hung
Jesus. That is some twisted shit. And after starting this over the phone too. God dammit. # v_hangup_jesus
Carlee, what is going on? I demand answers.         # v_hangup_going_on
->breakup.whynocomment

= start_hangup_response
{ start_hangup_response >= 2: -> hang_up_agitated }
->disconnect->
Anyway,                                             # v_hangup_anyway
{
- not start.jim_came:
-> start.jim_came
- else:
-> start.pushing
}