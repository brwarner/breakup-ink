// Has Josh call the player
EXTERNAL call()

// True if the player answered the last call, or false if they declined/let it ring out
EXTERNAL call_return()

// Wait t seconds to continue
EXTERNAL delay(t)

// Josh hangs up the phone
// TODO: Implement game-side
EXTERNAL hangup()

// Enables the block feature
EXTERNAL enable_block()

// Starts the happy messages
EXTERNAL start_messages()

// Helps decide the next random topic
EXTERNAL decide_topic(wedding_stage, health_stage, tractor_stage, last_topic_index)

EXTERNAL get_message(from, message)

// Fallback functions (for when running outside of game)

== function call() ==
~ return

== function delay(t) ==
~ return

== function call_return() ==
~ return 0

== function hangup() ==
~ return

== function enable_block() ==
~ return

== function start_messages() ==
~ return

== function decide_topic(wedding_stage, health_stage, tractor_stage, last_topic_index) ==
~ return 0

== function get_message(from, message) ==
~ return