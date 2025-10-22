    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating process proc1[0]
    Scheduling activity proc1[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating process proc2[0]
    Scheduling activity proc2[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating process proc3[0]
    Scheduling activity proc3[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating barrier s2[0] with count 2
    Process usermain[0] executing Join
    - 3 active child activities exist, current process waits
Transferring to process proc1[0]
    Initializing Barrier s2[0]; new count = 3

Starting Test1

    Process proc1[0] sends message #0 of type 0 to process proc2[0]
    - Non-blocking send, sending process continues
Proc1 sending message data1 to Proc2
    Process proc1[0] checks for message of type -1 
    - No message available
    Process proc1[0] tries to receive message of type -1 
    - No messages available; non-blocking receive, process continues
    Process proc1[0] delaying for 0.7 time units
Transferring to process proc2[0]
    Process proc2[0] tries to receive message of type 0 from process proc3[0]
    - No messages available; non-blocking receive, process continues
Proc2 returns from nonblocking receive with retval -1
    Process proc2[0] tries to receive message of type 0 from process proc1[0]
    - Message available
    Receiving 6 characters of message #0 of type 0 from process proc1[0]
Proc2 receives the 6 characters data1
    Process proc2[0] sends message #1 of type 0 to process proc3[0]
    - Non-blocking send, sending process continues
Proc2 sending message data1 to Proc3
    Process proc2[0] synchronizing on barrier s2[0]
    - 1 processes waiting at barrier;  process waits
Transferring to process proc3[0]
    Process proc3[0] tries to receive message of type 0 
    - Message available
    Receiving 6 characters of message #1 of type 0 from process proc2[0]
Proc3 receives the 6 characters data1
    Process proc3[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.7>>
Transferring to process proc1[0]
    Process proc1[0] checks for message of type -1 
    - No message available
    Process proc1[0] tries to receive message of type -1 
    - No messages available; non-blocking receive, process continues
    Process proc1[0] delaying for 0.7 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1>>
Transferring to process proc3[0]
    Process proc3[0] sends message #2 of type 0 to process proc1[0]
    - Non-blocking send, sending process continues
Proc3 sending message data1 to Proc1
    Process proc3[0] synchronizing on barrier s2[0]
    - 2 processes waiting at barrier;  process waits
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1.4>>
Transferring to process proc1[0]
    Process proc1[0] checks for message of type -1 
    - Message available
    Process proc1[0] tries to receive message of type -1 
    - Message available
    Receiving 10 characters of message #2 of type 0 from process proc3[0]
Proc1 receives message data1
Barrier Waiting = 2
Barrier Needed = 1
    Process proc1[0] synchronizing on barrier s2[0]
    - Releasing all waiting processes
    - Releasing process proc2[0]
    - Releasing process proc3[0]
Barrier Waiting = 0
Barrier Needed = 3

Test1 completed; Starting Test2

    Process proc1[0] sends message #3 of type 1 to process proc2[0]
    - Non-blocking send, sending process continues
    Process proc1[0] sends message #4 of type 2 to process proc2[0]
    - Non-blocking send, sending process continues
    Process proc1[0] sends message #5 of type 3 to process proc2[0]
    - Blocking send, sending process suspends
Transferring to process proc2[0]
    Process proc2[0] checks for message of type 3 
    - Message available
8 characters in waiting message
    Process proc2[0] tries to receive message of type 3 
    - Message available
    Receiving 0 characters of message #5 of type 3 from process proc1[0]

WARNING: Not all message bytes received

    Process proc2[0] checks for message of type 3 
    - Message available
8 characters in waiting message
    Process proc2[0] tries to receive message of type 3 
    - Message available
    Receiving 4 characters of message #5 of type 3 from process proc1[0]

WARNING: Not all message bytes received

    Process proc2[0] checks for message of type 3 
    - Message available
4 characters in waiting message
    Process proc2[0] tries to receive message of type 3 
    - Message available
    Receiving 4 characters of message #5 of type 3 from process proc1[0]
    Blocked sending process proc1[0] released
Bytes received = 4
    Process proc2[0] tries to receive message of type 1 from process proc1[0]
    - Message available
    Receiving 8 characters of message #3 of type 1 from process proc1[0]
    Process proc2[0] tries to receive message of type 2 
    - Message available
    Receiving 8 characters of message #4 of type 2 from process proc1[0]
    Process proc2[0] synchronizing on barrier s2[0]
    - 1 processes waiting at barrier;  process waits
Transferring to process proc3[0]
    Process proc3[0] delaying for 2 time units
Transferring to process proc1[0]
    Process proc1[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2.4>>
Transferring to process proc1[0]
    Process proc1[0] tries to receive message of type -1 
    - No messages available; blocking receive, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.4>>
Transferring to process proc3[0]
    Process proc3[0] sends message #6 of type 0 to process proc3[0]
    - Non-blocking send, sending process continues
    Process proc3[0] tries to receive message of type 0 
    - Message available
    Receiving 5 characters of message #6 of type 0 from process proc3[0]
    Process proc3[0] sends message #7 of type 0 to process proc1[0]
    - Non-blocking send, sending process continues
    Process proc3[0] synchronizing on barrier s2[0]
    - 2 processes waiting at barrier;  process waits
Transferring to process proc1[0]
    Process proc1[0] tries to receive message of type -1 
    - Message available
    Receiving 7 characters of message #7 of type 0 from process proc3[0]
    Process proc1[0] synchronizing on barrier s2[0]
    - Releasing all waiting processes
    - Releasing process proc2[0]
    - Releasing process proc3[0]

Test2 completed; Starting Test3

    Process proc1[0] sends message #8 of type 1 to process proc2[0]
    - Non-blocking send, sending process continues
    Process proc1[0] sends message #9 of type 2 to process proc2[0]
    - Non-blocking send, sending process continues
    Process proc1[0] sends message #10 of type 3 to process proc2[0]
    - Blocking send, sending process suspends
Transferring to process proc2[0]
    Process proc2[0] tries to receive message of type 3 
    - Message available
    Receiving 0 characters of message #10 of type 3 from process proc1[0]
    Blocked sending process proc1[0] released
    Process proc2[0] tries to receive message of type 1 from process proc1[0]
    - Message available
    Receiving 0 characters of message #8 of type 1 from process proc1[0]
    Process proc2[0] tries to receive message of type 2 
    - Message available
    Receiving 0 characters of message #9 of type 2 from process proc1[0]
    Process proc2[0] synchronizing on barrier s2[0]
    - 1 processes waiting at barrier;  process waits
Transferring to process proc3[0]
    Process proc3[0] synchronizing on barrier s2[0]
    - 2 processes waiting at barrier;  process waits
Transferring to process proc1[0]
    Process proc1[0] synchronizing on barrier s2[0]
    - Releasing all waiting processes
    - Releasing process proc2[0]
    - Releasing process proc3[0]
Process proc1[0] terminating
Transferring to process proc2[0]
Process proc2[0] terminating
Transferring to process proc3[0]
Process proc3[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]

Test3 completed; Starting Test4

    Creating process msgpr[0]
    Creating event msgev[0]
    Scheduling activity msgpr[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Scheduling activity msgev[0] to occur in 0 time units
    Process usermain[0] executing Join
    - 1 active child activities exist, current process waits
Transferring to process msgpr[0]
    Process msgpr[0] tries to receive message of type -1 
    - No messages available; blocking receive, process suspends
Initiating event msgev[0]
    Event msgev[0] sends message #11 of type 1 to process msgpr[0]
Transferring to process msgpr[0]
    Process msgpr[0] tries to receive message of type -1 
    - Message available
    Receiving 8 characters of message #11 of type 1 from process msgev[0]
First message recieved: Message
    Scheduling activity msgev[0] to occur in 0 time units
    Process msgpr[0] delaying for 1 time units
Initiating event msgev[0]
    Event msgev[0] sends message #12 of type 1 to process msgpr[0]
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4.4>>
Transferring to process msgpr[0]
    Process msgpr[0] tries to receive message of type -1 from process msgev[0]
    - Message available
    Receiving 8 characters of message #12 of type 1 from process msgev[0]
Second message recieved: Message
    Scheduling activity msgev[0] to occur in 0 time units
    Process msgpr[0] delaying for 1 time units
Initiating event msgev[0]
    Event msgev[0] sends message #13 of type 1 to process msgpr[0]
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.4>>
Transferring to process msgpr[0]
    Process msgpr[0] tries to receive message of type 1 
    - Message available
    Receiving 8 characters of message #13 of type 1 from process msgev[0]
Third message recieved: Message
    Scheduling activity msgev[0] to occur in 0 time units
    Process msgpr[0] delaying for 1 time units
Initiating event msgev[0]
    Event msgev[0] sends message #14 of type 1 to process msgpr[0]
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.4>>
Transferring to process msgpr[0]
Process msgpr[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 6.4

