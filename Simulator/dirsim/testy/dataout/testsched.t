    Creating semaphore sem[0] with value 1
    Creating flag sev[0]
    Creating integer-valued state variable iv[0] = 0
    Creating condition con[0]
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]

Testing the operation ActivitySchedTime(INDEPENDENT) for processes

    Creating process A[0]
    Setting argument for A[0]
    Scheduling activity A[0] to occur in 0 time units
    Creating process B[0]
    Setting argument for B[0]
    Scheduling activity B[0] to occur in 0.1 time units
    Creating process C[0]
    Scheduling activity C[0] to occur in 0.2 time units
    Process usermain[0] delaying for 1 time units
Transferring to process A[0]
    Process A starts with agrument = 100
    Process A[0] delaying for 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.1>>
Transferring to process B[0]
    Process B starts with argument = 200
    Process B[0] delaying for 0.4 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.2>>
Transferring to process C[0]
    Process C starts with no arguments
    Process C[0] delaying for 0.3 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.5>>
Transferring to process A[0]
Process A[0] terminating
Transferring to process B[0]
Process B[0] terminating
Transferring to process C[0]
Process C[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1>>
Transferring to process usermain[0]

Testing the operation ActivitySchedTime(,BLOCK) for events

    Creating event A[0]
    Setting argument for A[0]
    Scheduling activity A[0] to occur in 0.1 time units
    Creating event B[0]
    Setting argument for B[0]
    Scheduling activity B[0] to occur in 0 time units
    Process usermain[0] delaying for 0 time units
Initiating event B[0]
    Event B occurs with argurment = 100
Event B[0] terminating
Transferring to process usermain[0]
    Creating event B[0]
    Scheduling activity B[0] to occur in 0 time units
    Process usermain[0] delaying for 0.8 time units
Initiating event B[0]
    Event B occurs with no arguments
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1.1>>
Initiating event A[0]
    Event A occurs with argurment = 200, Type = 10
Event A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1.8>>
Transferring to process usermain[0]

Testing the operation ActivitySchedSema(INDEPENDENT) for processes

    Initializing semaphore sem[0]; new value = 0
    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; A waits
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; B waits
    Scheduling activity C[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; C waits
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2.8>>
Transferring to process usermain[0]
    Process usermain[0] signalling semaphore sem[0]
    - Activity A[0] released; semaphore value unchanged
    Process usermain[0] signalling semaphore sem[0]
    - Activity B[0] released; semaphore value unchanged
    Process usermain[0] delaying for 1 time units
Transferring to process A[0]
    Process A starts with agrument = 200
    Process A[0] delaying for 0.5 time units
Transferring to process B[0]
    Process B starts with argument = 100
    Process B[0] delaying for 0.4 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.2>>
Transferring to process B[0]
Process B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.3>>
Transferring to process A[0]
Process A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.8>>
Transferring to process usermain[0]
    Process usermain[0] signalling semaphore sem[0]
    - Activity C[0] released; semaphore value unchanged
    Process usermain[0] delaying for 1 time units
Transferring to process C[0]
    Process C starts with no arguments
    Process C[0] delaying for 0.3 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4.1>>
Transferring to process C[0]
Process C[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4.8>>
Transferring to process usermain[0]

Testing the operation ActivitySchedSema(INDEPENDENT) for events

    Creating event A[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; A waits
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; B waits
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.8>>
Transferring to process usermain[0]
    Process usermain[0] signalling semaphore sem[0]
    - Activity A[0] released; semaphore value unchanged
    Process usermain[0] delaying for 0.1 time units
Initiating event A[0]
    Event A occurs with argurment = 100, Type = 5
Event A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.9>>
Transferring to process usermain[0]
    Process usermain[0] signalling semaphore sem[0]
    - Activity B[0] released; semaphore value unchanged
    Process usermain[0] delaying for 0.1 time units
Initiating event B[0]
    Event B occurs with argurment = 200
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6>>
Transferring to process usermain[0]
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; B waits
    Process usermain[0] signalling semaphore sem[0]
    - Activity B[0] released; semaphore value unchanged
    Process usermain[0] signalling semaphore sem[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] delaying for 0.9 time units
Initiating event B[0]
    Event B occurs with argurment = 200
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.9>>
Transferring to process usermain[0]

Testing the operation ActivitySchedFlag(INDEPENDENT) for processes

    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Process usermain[0] setting flag sev[0]
    - 0 activities waiting
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for flag sev[0]
    - Flag is set, activity scheduled now
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    Scheduling activity C[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    Process usermain[0] delaying for 1 time units
Transferring to process A[0]
    Process A starts with agrument = 200
    Process A[0] delaying for 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.4>>
Transferring to process A[0]
Process A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.9>>
Transferring to process usermain[0]
    Process usermain[0] setting flag sev[0]
    - 2 activities waiting
    - Activity B[0] released from flag sev[0]
    - Activity C[0] released from flag sev[0]
    Process usermain[0] delaying for 1 time units
Transferring to process B[0]
    Process B starts with argument = 100
    Process B[0] delaying for 0.4 time units
Transferring to process C[0]
    Process C starts with no arguments
    Process C[0] delaying for 0.3 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.2>>
Transferring to process C[0]
Process C[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.3>>
Transferring to process B[0]
Process B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.9>>
Transferring to process usermain[0]

Testing the operation ActivitySchedFlag(INDEPENDENT) for events

    Process usermain[0] setting flag sev[0]
    - 0 activities waiting
    Creating event A[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for flag sev[0]
    - Flag is set, activity scheduled now
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    Process usermain[0] delaying for 1 time units
Initiating event A[0]
    Event A occurs with argurment = 100, Type = 5
Event A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.9>>
Transferring to process usermain[0]
    Process usermain[0] setting flag sev[0]
    - 1 activities waiting
    - Activity B[0] released from flag sev[0]
    Process usermain[0] delaying for 0.1 time units
Initiating event B[0]
    Event B occurs with argurment = 200
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10>>
Transferring to process usermain[0]
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    Process usermain[0] setting flag sev[0]
    - 1 activities waiting
    - Activity B[0] released from flag sev[0]
    Process usermain[0] delaying for 0.9 time units
Initiating event B[0]
    Event B occurs with argurment = 200
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10.9>>
Transferring to process usermain[0]

Testing the operation ActivitySchedCond(INDEPENDENT) for processes

    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    Scheduling activity B[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    State Variable iv[0] modified; new value = 1
    Evaluating condition con[0]; new state = 1
    - Activity A[0] released from condition con[0]
    - Activity B[0] released from condition con[0]
    Scheduling activity C[0] to wait for condition con[0]
    - Condition true, activity scheduled now
    State Variable iv[0] modified; new value = 0
    Evaluating condition con[0]; new state = 0
    Process usermain[0] delaying for 0.1 time units
Transferring to process A[0]
    Process A starts with agrument = 200
    Process A[0] delaying for 0.5 time units
Transferring to process B[0]
    Process B starts with argument = 100
    Process B[0] delaying for 0.4 time units
Transferring to process C[0]
    Process C starts with no arguments
    Process C[0] delaying for 0.3 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11>>
Transferring to process usermain[0]
    State Variable iv[0] modified; new value = 2
    Evaluating condition con[0]; new state = 1
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11.2>>
Transferring to process C[0]
Process C[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11.3>>
Transferring to process B[0]
Process B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11.4>>
Transferring to process A[0]
Process A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
Transferring to process usermain[0]
    State Variable iv[0] modified; new value = 0
    Evaluating condition con[0]; new state = 0

Testing the operation ActivitySchedCond(INDEPENDENT) for events

    Creating event A[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    Scheduling activity B[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    Process usermain[0] delaying for 0.1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12.1>>
Transferring to process usermain[0]
    State Variable iv[0] modified; new value = 222
    Evaluating condition con[0]; new state = 1
    - Activity A[0] released from condition con[0]
    - Activity B[0] released from condition con[0]
    Process usermain[0] delaying for 0.1 time units
Initiating event A[0]
    Event A occurs with argurment = 100, Type = 1
Event A[0] terminating
Initiating event B[0]
    Event B occurs with argurment = 200
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12.2>>
Transferring to process usermain[0]
    Scheduling activity B[0] to wait for condition con[0]
    - Condition true, activity scheduled now
    Process usermain[0] delaying for 0.9 time units
Initiating event B[0]
    Event B occurs with argurment = 200
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13.1>>
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 13.1

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating semaphore sem[0] with value 1
    Creating flag sev[0]
    Creating event evset[0]
    Creating event evset[0]
    Creating event evset[0]
    Creating event evsig[0]
    Creating event evsig[0]
    Creating event evsig[0]
    Creating event evsetsv[0]
    Creating event evsetsv[0]
    Creating event evsetsv[0]
    Creating integer-valued state variable iv[0] = 0
    Creating condition con[0]
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]

Testing the operation Schedule(float,BLOCK) for processes

    Creating process A[0]
    Setting argument for A[0]
    Scheduling activity A[0] to occur in 0 time units
    - Blocking schedule, parent process usermain[0] suspends
Transferring to process A[0]
    Process A starts with agrument = 100
    Process A[0] delaying for 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.5>>
Transferring to process A[0]
Process A[0] terminating
Transferring to process usermain[0]
    Creating process B[0]
    Setting argument for B[0]
    Scheduling activity B[0] to occur in 0.1 time units
    Creating process C[0]
    Scheduling activity C[0] to occur in 0.2 time units
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.6>>
Transferring to process B[0]
    Process B starts with argument = 200
    Process B[0] delaying for 0.4 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.7>>
Transferring to process C[0]
    Process C starts with no arguments
    Process C[0] delaying for 0.3 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1>>
Transferring to process B[0]
Process B[0] terminating
Transferring to process C[0]
Process C[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2>>
Transferring to process usermain[0]

Testing the operation Schedule(float,BLOCK) for events

    Creating event A[0]
    Setting argument for A[0]
    Scheduling activity A[0] to occur in 0.1 time units
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2.1>>
Initiating event A[0]
    Event A occurs with argurment = 200, Type = 10
Event A[0] terminating
Transferring to process usermain[0]
    Creating event B[0]
    Setting argument for B[0]
    Scheduling activity B[0] to occur in 0 time units
    - Blocking schedule, parent process usermain[0] suspends
Initiating event B[0]
    Event B occurs with argurment = 100
Event B[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 0 time units
Transferring to process usermain[0]
    Creating event B[0]
    Scheduling activity B[0] to occur in 0 time units
    Process usermain[0] delaying for 0.8 time units
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2.9>>
Transferring to process usermain[0]

Testing the operation Schedule(SEMAPHORE*,BLOCK) for processes

    Initializing semaphore sem[0]; new value = 0
    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity evsig[0] to occur in 0.1 time units
    Scheduling activity evsig[0] to occur in 0.2 time units
    Scheduling activity evsig[0] to occur in 0.3 time units
    Scheduling activity A[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; A waits
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
Initiating event evsig[0]
    Event evsig[0] signalling semaphore sem[0]
    - Activity A[0] released; semaphore value unchanged
Transferring to process A[0]
    Process A starts with agrument = 200
    Process A[0] delaying for 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.1>>
Initiating event evsig[0]
    Event evsig[0] signalling semaphore sem[0]
    - No processes or events waiting; new semaphore value = 1
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.2>>
Initiating event evsig[0]
    Event evsig[0] signalling semaphore sem[0]
    - No processes or events waiting; new semaphore value = 2
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.5>>
Transferring to process A[0]
Process A[0] terminating
Transferring to process usermain[0]
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 2; sem is decremented and B is activated
    - Blocking schedule, parent process usermain[0] suspends
Transferring to process B[0]
    Process B starts with argument = 100
    Process B[0] delaying for 0.4 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.9>>
Transferring to process B[0]
Process B[0] terminating
Transferring to process usermain[0]
    Scheduling activity C[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 1; sem is decremented and C is activated
    - Blocking schedule, parent process usermain[0] suspends
Transferring to process C[0]
    Process C starts with no arguments
    Process C[0] delaying for 0.3 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4.2>>
Transferring to process C[0]
Process C[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.2>>
Transferring to process usermain[0]

Testing the operation Schedule(SEMAPHORE*,BLOCK) for events

    Creating event A[0]
    Creating event B[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity evsig[0] to occur in 0.1 time units
    Scheduling activity evsig[0] to occur in 0.2 time units
    Scheduling activity A[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; A waits
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.3>>
Initiating event evsig[0]
    Event evsig[0] signalling semaphore sem[0]
    - Activity A[0] released; semaphore value unchanged
Initiating event A[0]
    Event A occurs with argurment = 100, Type = 5
Event A[0] terminating
Transferring to process usermain[0]
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; B waits
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.4>>
Initiating event evsig[0]
    Event evsig[0] signalling semaphore sem[0]
    - Activity B[0] released; semaphore value unchanged
Initiating event B[0]
    Event B occurs with argurment = 200
Event B[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.4>>
Transferring to process usermain[0]
    Scheduling activity evsig[0] to occur in 0 time units
    Creating event B[0]
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; B waits
    - Blocking schedule, parent process usermain[0] suspends
Initiating event evsig[0]
    Event evsig[0] signalling semaphore sem[0]
    - Activity B[0] released; semaphore value unchanged
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 0.9 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.3>>
Transferring to process usermain[0]

Testing the operation Schedule(FLAG*,BLOCK) for processes

    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Scheduling activity evset[0] to occur in 2 time units
    Scheduling activity evset[0] to occur in 1 time units
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.3>>
Initiating event evset[0]
    Event evset[0] setting flag sev[0]
    - 1 activities waiting
    - Activity A[0] released from flag sev[0]
Transferring to process A[0]
    Process A starts with agrument = 200
    Process A[0] delaying for 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.8>>
Transferring to process A[0]
Process A[0] terminating
Transferring to process usermain[0]
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.3>>
Initiating event evset[0]
    Event evset[0] setting flag sev[0]
    - 1 activities waiting
    - Activity B[0] released from flag sev[0]
Transferring to process B[0]
    Process B starts with argument = 100
    Process B[0] delaying for 0.4 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.7>>
Transferring to process B[0]
Process B[0] terminating
Transferring to process usermain[0]
    Scheduling activity evset[0] to occur in 2 time units
    Scheduling activity C[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11.7>>
Initiating event evset[0]
    Event evset[0] setting flag sev[0]
    - 1 activities waiting
    - Activity C[0] released from flag sev[0]
Transferring to process C[0]
    Process C starts with no arguments
    Process C[0] delaying for 0.3 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
Transferring to process C[0]
Process C[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13>>
Transferring to process usermain[0]

Testing the operation Schedule(FLAG*,BLOCK) for events

    Creating event A[0]
    Creating event B[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity evset[0] to occur in 0.1 time units
    Scheduling activity evset[0] to occur in 0.2 time units
    Scheduling activity A[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13.1>>
Initiating event evset[0]
    Event evset[0] setting flag sev[0]
    - 1 activities waiting
    - Activity A[0] released from flag sev[0]
Initiating event A[0]
    Event A occurs with argurment = 100, Type = 5
Event A[0] terminating
Transferring to process usermain[0]
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13.2>>
Initiating event evset[0]
    Event evset[0] setting flag sev[0]
    - 1 activities waiting
    - Activity B[0] released from flag sev[0]
Initiating event B[0]
    Event B occurs with argurment = 200
Event B[0] terminating
Transferring to process usermain[0]
    Scheduling activity evset[0] to occur in 0.1 time units
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13.3>>
Initiating event evset[0]
    Event evset[0] setting flag sev[0]
    - 0 activities waiting
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14.2>>
Transferring to process usermain[0]
    Creating event B[0]
    Scheduling activity evset[0] to occur in 0.1 time units
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag is set, activity scheduled now
    - Blocking schedule, parent process usermain[0] suspends
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 0.9 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14.3>>
Initiating event evset[0]
    Event evset[0] setting flag sev[0]
    - 0 activities waiting
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 15.1>>
Transferring to process usermain[0]

Testing the operation Schedule(CONDITION*,BLOCK) for processes

    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity evsetsv[0] to occur in 0 time units
    State Variable iv[0] modified; new value = 0
    Evaluating condition con[0]; new state = 0
    Scheduling activity evsetsv[0] to occur in 1 time units
    Scheduling activity A[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    - Blocking schedule, parent process usermain[0] suspends
Initiating event evsetsv[0]
    State Variable iv[0] modified; new value = 1
    Evaluating condition con[0]; new state = 1
    - Activity A[0] released from condition con[0]
Transferring to process A[0]
    Process A starts with agrument = 200
    Process A[0] delaying for 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 15.6>>
Transferring to process A[0]
Process A[0] terminating
Transferring to process usermain[0]
    Scheduling activity B[0] to wait for condition con[0]
    - Condition true, activity scheduled now
    - Blocking schedule, parent process usermain[0] suspends
Transferring to process B[0]
    Process B starts with argument = 100
    Process B[0] delaying for 0.4 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16>>
Transferring to process B[0]
Process B[0] terminating
Transferring to process usermain[0]
    Scheduling activity evsetsv[0] to occur in 1 time units
    Scheduling activity C[0] to wait for condition con[0]
    - Condition true, activity scheduled now
    - Blocking schedule, parent process usermain[0] suspends
Transferring to process C[0]
    Process C starts with no arguments
    Process C[0] delaying for 0.3 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16.1>>
Initiating event evsetsv[0]
    State Variable iv[0] modified; new value = 1
    Evaluating condition con[0]; new state = 1
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16.3>>
Transferring to process C[0]
Process C[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17>>
Initiating event evsetsv[0]
    State Variable iv[0] modified; new value = 1
    Evaluating condition con[0]; new state = 1
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17.3>>
Transferring to process usermain[0]
    State Variable iv[0] modified; new value = 0
    Evaluating condition con[0]; new state = 0

Testing the operation Schedule(CONDITION*,BLOCK) for events

    Creating event A[0]
    Setting argument for A[0]
    Setting argument for A[0]
    Scheduling activity evsetsv[0] to occur in 0 time units
    Scheduling activity evsetsv[0] to occur in 1 time units
    Scheduling activity A[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    - Blocking schedule, parent process usermain[0] suspends
Initiating event evsetsv[0]
    State Variable iv[0] modified; new value = 1
    Evaluating condition con[0]; new state = 1
    - Activity A[0] released from condition con[0]
Initiating event A[0]
    Event A occurs with argurment = 200, Type = 1
Event A[0] terminating
Transferring to process usermain[0]
    Creating event B[0]
    Scheduling activity B[0] to wait for condition con[0]
    - Condition true, activity scheduled now
    - Blocking schedule, parent process usermain[0] suspends
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 0.1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17.4>>
Transferring to process usermain[0]
    State Variable iv[0] modified; new value = 0
    Evaluating condition con[0]; new state = 0
    Process usermain[0] delaying for 0.1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17.5>>
Transferring to process usermain[0]
    Scheduling activity evsetsv[0] to occur in 1 time units
    Creating event B[0]
    Scheduling activity B[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    - Blocking schedule, parent process usermain[0] suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 18.3>>
Initiating event evsetsv[0]
    State Variable iv[0] modified; new value = 1
    Evaluating condition con[0]; new state = 1
    - Activity B[0] released from condition con[0]
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
Transferring to process usermain[0]
    Process usermain[0] delaying for 0.9 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 18.5>>
Initiating event evsetsv[0]
    State Variable iv[0] modified; new value = 1
    Evaluating condition con[0]; new state = 1
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 19.2>>
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 19.2

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating semaphore sem[0] with value 1
    Creating flag sev[0]
    Creating integer-valued state variable iv[0] = 0
    Creating condition con[0]
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]

Testing the operation Schedule(float,FORK) for processes

    Creating process A[0]
    Setting argument for A[0]
    Scheduling activity A[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating process B[0]
    Setting argument for B[0]
    Scheduling activity B[0] to occur in 0.1 time units
    - Forking schedule, parent process is usermain[0]
    Creating process C[0]
    Scheduling activity C[0] to occur in 0.2 time units
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] executing Join
    - 3 active child activities exist, current process waits
Transferring to process A[0]
    Process A starts with agrument = 100
Process A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.1>>
Transferring to process B[0]
    Process B starts with argument = 200
Process B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.2>>
Transferring to process C[0]
    Process C starts with no arguments
Process C[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]

Testing the operation Schedule(float,FORK) for events

    Creating event A[0]
    Setting argument for A[0]
    Scheduling activity A[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating event B[0]
    Setting argument for B[0]
    Scheduling activity B[0] to occur in 0.1 time units
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] executing Join
    - 2 active child activities exist, current process waits
Initiating event A[0]
    Event A occurs with argurment = 200, Type = 10
Event A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.3>>
Initiating event B[0]
    Event B occurs with argurment = 100
Event B[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
    Creating event B[0]
    Scheduling activity B[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] delaying for 1 time units
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1.3>>
Transferring to process usermain[0]

Testing the operation Schedule(SEMAPHORE*,FORK) for processes

    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 1; sem is decremented and A is activated
    - Forking schedule, parent process is usermain[0]
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; B waits
    - Forking schedule, parent process is usermain[0]
    Scheduling activity C[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; C waits
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] delaying for 1 time units
Transferring to process A[0]
    Process A starts with agrument = 200
Process A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2.3>>
Transferring to process usermain[0]
    Process usermain[0] signalling semaphore sem[0]
    - Activity B[0] released; semaphore value unchanged
    Process usermain[0] signalling semaphore sem[0]
    - Activity C[0] released; semaphore value unchanged
    Process usermain[0] delaying for 1 time units
Transferring to process B[0]
    Process B starts with argument = 100
Process B[0] terminating
Transferring to process C[0]
    Process C starts with no arguments
Process C[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.3>>
Transferring to process usermain[0]
    Process usermain[0] signalling semaphore sem[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] executing Join
    - No active child activities exist, current process continues

Testing the operation Schedule(SEMAPHORE*,FORK) for events

    Creating event A[0]
    Creating event B[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 1; sem is decremented and A is activated
    - Forking schedule, parent process is usermain[0]
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; B waits
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] delaying for 1 time units
Initiating event A[0]
    Event A occurs with argurment = 100, Type = 5
Event A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4.3>>
Transferring to process usermain[0]
    Process usermain[0] signalling semaphore sem[0]
    - Activity B[0] released; semaphore value unchanged
    Process usermain[0] delaying for 0.1 time units
Initiating event B[0]
    Event B occurs with argurment = 200
Event B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4.4>>
Transferring to process usermain[0]
    Creating event B[0]
    Scheduling activity B[0] to wait for semaphore sem[0]
    - Semaphore sem[0] = 0; B waits
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] signalling semaphore sem[0]
    - Activity B[0] released; semaphore value unchanged
    Process usermain[0] signalling semaphore sem[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] executing Join
    - 1 active child activities exist, current process waits
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]

Testing the operation Schedule(FLAG*,FORK) for processes

    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Process usermain[0] setting flag sev[0]
    - 0 activities waiting
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for flag sev[0]
    - Flag is set, activity scheduled now
    - Forking schedule, parent process is usermain[0]
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Forking schedule, parent process is usermain[0]
    Scheduling activity C[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] delaying for 1 time units
Transferring to process A[0]
    Process A starts with agrument = 200
Process A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.4>>
Transferring to process usermain[0]
    Process usermain[0] setting flag sev[0]
    - 2 activities waiting
    - Activity B[0] released from flag sev[0]
    - Activity C[0] released from flag sev[0]
    Process usermain[0] setting flag sev[0]
    - 0 activities waiting
    Process usermain[0] executing Join
    - 2 active child activities exist, current process waits
Transferring to process B[0]
    Process B starts with argument = 100
Process B[0] terminating
Transferring to process C[0]
    Process C starts with no arguments
Process C[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]

Testing the operation Schedule(FLAG*,FORK) for events

    Creating event A[0]
    Creating event B[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for flag sev[0]
    - Flag is set, activity scheduled now
    - Forking schedule, parent process is usermain[0]
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] delaying for 1 time units
Initiating event A[0]
    Event A occurs with argurment = 100, Type = 5
Event A[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.4>>
Transferring to process usermain[0]
    Process usermain[0] setting flag sev[0]
    - 1 activities waiting
    - Activity B[0] released from flag sev[0]
    Process usermain[0] delaying for 0.1 time units
Initiating event B[0]
    Event B occurs with argurment = 200
Event B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.5>>
Transferring to process usermain[0]
    Creating event B[0]
    Scheduling activity B[0] to wait for flag sev[0]
    - Flag not set,activity scheduled to wait on flag
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] setting flag sev[0]
    - 1 activities waiting
    - Activity B[0] released from flag sev[0]
    Process usermain[0] setting flag sev[0]
    - 0 activities waiting
    Process usermain[0] executing Join
    - 1 active child activities exist, current process waits
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]

Testing the operation Schedule(CONDITION*,FORK) for processes

    Creating process A[0]
    Creating process B[0]
    Creating process C[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    - Forking schedule, parent process is usermain[0]
    Scheduling activity B[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    - Forking schedule, parent process is usermain[0]
    State Variable iv[0] modified; new value = 1
    Evaluating condition con[0]; new state = 1
    - Activity A[0] released from condition con[0]
    - Activity B[0] released from condition con[0]
    Scheduling activity C[0] to wait for condition con[0]
    - Condition true, activity scheduled now
    - Forking schedule, parent process is usermain[0]
    State Variable iv[0] modified; new value = 0
    Evaluating condition con[0]; new state = 0
    Process usermain[0] delaying for 0.1 time units
Transferring to process A[0]
    Process A starts with agrument = 200
Process A[0] terminating
Transferring to process B[0]
    Process B starts with argument = 100
Process B[0] terminating
Transferring to process C[0]
    Process C starts with no arguments
Process C[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.6>>
Transferring to process usermain[0]
    State Variable iv[0] modified; new value = 2
    Evaluating condition con[0]; new state = 1
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.6>>
Transferring to process usermain[0]
    State Variable iv[0] modified; new value = 0
    Evaluating condition con[0]; new state = 0
    Process usermain[0] executing Join
    - No active child activities exist, current process continues

Testing the operation Schedule(CONDITION*,FORK) for events

    Creating event A[0]
    Creating event B[0]
    Setting argument for A[0]
    Setting argument for B[0]
    Scheduling activity A[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    - Forking schedule, parent process is usermain[0]
    Scheduling activity B[0] to wait for condition con[0]
    - Condition false, activity scheduled on condition
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.6>>
Transferring to process usermain[0]
    State Variable iv[0] modified; new value = 222
    Evaluating condition con[0]; new state = 1
    - Activity A[0] released from condition con[0]
    - Activity B[0] released from condition con[0]
    Process usermain[0] delaying for 0.1 time units
Initiating event A[0]
    Event A occurs with argurment = 100, Type = 1
Event A[0] terminating
Initiating event B[0]
    Event B occurs with argurment = 200
Event B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.7>>
Transferring to process usermain[0]
    Creating event B[0]
    Scheduling activity B[0] to wait for condition con[0]
    - Condition true, activity scheduled now
    - Forking schedule, parent process is usermain[0]
    Process usermain[0] delaying for 0.9 time units
Initiating event B[0]
    Event B occurs with no arguments
Event B[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.6>>
Transferring to process usermain[0]
    Process usermain[0] executing Join
    - No active child activities exist, current process continues
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 9.6

