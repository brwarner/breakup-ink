VAR last_topic = 0

== random_topic ==
~ in_breakup = false
// Calculate which stage each of the idle conversations is at
~ temp health_stage = 0
~ temp tractor_stage = 0
~ temp wedding_stage = 0
~ temp last_topic_index = 0
{
- healthvetica.stage_three:
    ~ health_stage = 3
- healthvetica.stage_two:
    ~ health_stage = 2
- healthvetica.stage_one:
    ~ health_stage = 1
}
{
- tractor_dad.stage_three:
    ~ tractor_stage = 3
- tractor_dad.stage_two:
    ~ tractor_stage = 2
- tractor_dad.stage_one:
    ~ tractor_stage = 1
}
{
- wedding.stage_four:
    ~ wedding_stage = 3 // Setting this to three otherwise it'll never get picked over the other two.
- wedding.stage_three:
    ~ wedding_stage = 2
- wedding.stage_two:
    ~ wedding_stage = 2
- wedding.stage_one:
    ~ wedding_stage = 1
}

{
- last_topic == "wedding":
    ~ last_topic_index = 0
- last_topic == "healthvetica":
    ~ last_topic_index = 1
- last_topic == "tractor":
    ~ last_topic_index = 2
- else:
    ~ last_topic_index = -1
}

~ temp topic = decide_topic(wedding_stage, health_stage, tractor_stage, last_topic_index)
{
- topic == 0:
    ->goto_wedding
- topic == 1:
    ->goto_health
- topic == 2:
    ->goto_tractor
}

= goto_wedding
// I'm not sure if we need any pre-amble. I think all the starters in wedding work.
->wedding

= goto_health
{not healthvetica: 
- I want to talk about Healthvetica.                    # v_transitions_h1
- else:
    {cycle:
    - I still feel like my mind is spinning on Healthvetica.  # v_transitions_h2
    - I want to talk about Healthvetica.                      # v_transitions_h3
    }
}
-> healthvetica

= goto_tractor
{not tractor_dad:
- Have I mentioned Tractor Dad? Jim is trying to push that tripe out the door. Ugh.  # v_transitions_t1
- else:
    {cycle:
    - I'm still mad about Tractor Dad.                        # v_transitions_t2
    - Ugh I can't get Tractor Dad off my mind.                # v_transitions_t3  
    - I think I need to talk more about Tractor Dad.          # v_transitions_t4
    }
}
->tractor_dad