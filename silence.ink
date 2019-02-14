/*  
    This is the default silence thread you can
    use when you want the Antagonist to just say
    the default Hey... are you there? Hello?
    Pass in the divert you want to use
    when the Player apologizes and asks
    "Sorry, what were we talking about?"
    This will have a lot of built in randomness
    and variation so it's not always the same
    thing.
*/
=== silence(-> apologize) ===
+ ...
    ~ temp repeats = 0
    -- (repeat) {shuffle:
    -   Hey, are you there? Carlee?         # v_silences_hey_are_you_there_carlee
    -   Carlee? You there?                  # v_silences_carlee_you_there
    -   Are you listening?                  # v_silences_are_you_listening
    -   Hey? Hello? Anyone there?           # v_silences_hey_hello_there
    -   Carlee, this is important.          # v_silences_carlee_this_important
    -   Carlee, I need you right now. Please.   # v_silences_carlee_i_need_please
    -   Ring ring ring. Earth to Carlee? My girlfriend? Who is on the phone with her troubled boyfriend? # v_silences_ring_ring_ring_girlfriend
    }
    ~ repeats = repeats + 1
    ++ Oh, yeah. Sorry.
        No worries.             # v_silences_no_worries
        -> apologize
    ++ I think I need to get to bed.
        This won't be that longer. I promise.   # v_silences_wont_be
        It really means a lot to me that you care.  # v_silences_really_means
        +++ I can't do this anymore.
            ...
            Do what?                                # v_silences_do_what
            ++++ I want to break up with you
                -> breakup
            ++++ ...
                -> repeat
        +++ Okay.
        +++ ...
        --- -> apologize
    ++ ...
        {
        - repeats > 3:
            ...
            Hrm.                # v_silences_hrm
            -> patterns
        -else:
            -> repeat
        }

VAR enforce_silence_counter = true

// SPECIAL: This is called when you pick the silent option too many consecutive times in a row        
== too_silent
null
{in_breakup: ->too_silent_breakup}
{stopping:
- Hey, Carlee? Are you actually there? Something must be wrong with the phone. # v_silences_carlee_actually_there
- Carlee? You're not coming through. Hello? # v_silences_carlee_through
- ... Are you ignoring me on purpose?   # v_silences_ignoring_me
-> breakup.stage_three
}
One sec.        # v_silences_one_sec
pre-hangup #continue
~ hangup()
-> hang_up

== too_silent_breakup
{stopping:
- Really? You're ignoring me now?   # v_silences_really_ignoring
- This is fucking insane.           # v_silences_insane
}
{
- not breakup.stage_two: ->breakup.stage_two
- else: ->breakup.stage_three
}