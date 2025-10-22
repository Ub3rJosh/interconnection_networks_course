    Creating real valued state variable SimTime[0] = 0
Number of Packets = 6, Packet size = 2, Buffer Size = 2
Head doesn't wait for tail, Buffer threshold = 1
Flit Delay = 1, Packet Delay = 1
Mux Delay = 1, Mux Delay = 1, Demux Delay = 1

    Creating input port 0
    Creating semaphore PortRdy0[0] with value 2
    Creating semaphore NetRdy0[0] with value 1
    Creating output port 50
    Creating semaphore FreeSpace50[0] with value 1
    Creating semaphore PacketAvail50[0] with value 0
    Creating network buffer (id = 1, size = 2)
    Creating network buffer (id = 2, size = 2)
    Creating network buffer (id = 3, size = 2)
    Connecting input port 0 to buffer 1
    Connecting buffer 1 to buffer 2
    Connecting buffer 2 to buffer 3
    Connecting buffer 3 to output port 50
    Creating process UserSend[0]
    Scheduling activity UserSend[0] to occur in 0 time units
    Creating process UserRecv[0]
    Scheduling activity UserRecv[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process UserSend[0]
    Creating packet 100 of size 2
    Attempting to send packet 100 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head100[0]
    Setting argument for Head100[0]
    Creating event Tail100[0]
    Setting argument for Tail100[0]
    Scheduling activity Head100[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend[0] delaying for 2 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2>>
Initiating event Head100[0]
    Head of packet 100 at front of input port queue 0
    Head of packet 100 determining its next module
    - Head's next module is buffer 1
    - That buffer has space, head free to move
    Rescheduling event Head100[0] to occur in 0.5 time units
Transferring to process UserSend[0]
Packet 100 delivered to net at time 2
    Creating packet 101 of size 2
    Attempting to send packet 101 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head101[0]
    Setting argument for Head101[0]
    Creating event Tail101[0]
    Setting argument for Tail101[0]
    Scheduling activity Head101[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend[0] delaying for 2 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2.5>>
Initiating event Head100[0]
    Head of packet 100 moves from input port 0
    Tail of packet 100 wakes up
    Scheduling activity Tail100[0] to occur in 0.5 time units
    Head of packet 100 moves to buffer 1 
    - Packet 100 status: 0/1 1/1
    - Head at the front of the buffer
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
Initiating event Tail100[0]
    Tail of packet 100 free to move out of module 0
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 determining its next module
    - Head's next module is buffer 2
    - That buffer has space, head free to move
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.5>>
Initiating event Tail100[0]
    Tail of packet 100 moves from input port 0 to buffer 1
    - Packet 100 status: 1/2
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 moves from buffer 1 
    Head of packet 100 moves to buffer 2 
    - Packet 100 status: 1/1 2/1
    - Head at the front of the buffer
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4>>
Initiating event Head101[0]
    Rescheduling event Head101[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head101 waits
Transferring to process UserSend[0]
Packet 101 delivered to net at time 4
    Creating packet 102 of size 2
    Attempting to send packet 102 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head102[0]
    Setting argument for Head102[0]
    Creating event Tail102[0]
    Setting argument for Tail102[0]
    Scheduling activity Head102[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend[0] delaying for 2 time units
Initiating event Tail100[0]
    Event Tail100[0] signalling semaphore NetRdy0[0]
    - Activity Head101[0] released; semaphore value unchanged
    Event Tail100[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 100 free to move out of module 1
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 determining its next module
    - Head's next module is buffer 3
    - That buffer has space, head free to move
    Rescheduling event Head100[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is buffer 1
    - That buffer has space, head free to move
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4.5>>
Initiating event Tail100[0]
    Tail of packet 100 moves from buffer 1 to buffer 2
    - Packet 100 status: 2/2
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 moves from buffer 2 
    Head of packet 100 moves to buffer 3 
    - Packet 100 status: 2/1 3/1
    - Head at the front of the buffer
    Rescheduling event Head100[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 moves from input port 0
    Tail of packet 101 wakes up
    Scheduling activity Tail101[0] to occur in 0.5 time units
    Head of packet 101 moves to buffer 1 
    - Packet 101 status: 0/1 1/1
    - Head at the front of the buffer
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5>>
Initiating event Tail100[0]
    Tail of packet 100 free to move out of module 2
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head100[0] to occur in 0.5 time units
Initiating event Tail101[0]
    Tail of packet 101 free to move out of module 0
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is buffer 2
    - That buffer has space, head free to move
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.5>>
Initiating event Tail100[0]
    Tail of packet 100 moves from buffer 2 to buffer 3
    - Packet 100 status: 3/2
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 moves from buffer 3 
    Head of packet 100 moves to output port 50 
    Event Head100[0] set to deleting mode
Event Head100[0] terminating
Initiating event Tail101[0]
    Tail of packet 101 moves from input port 0 to buffer 1
    - Packet 101 status: 1/2
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 moves from buffer 1 
    Head of packet 101 moves to buffer 2 
    - Packet 101 status: 1/1 2/1
    - Head at the front of the buffer
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6>>
Initiating event Head102[0]
    Rescheduling event Head102[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head102 waits
Transferring to process UserSend[0]
Packet 102 delivered to net at time 6
    Creating packet 103 of size 2
    Attempting to send packet 103 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head103[0]
    Setting argument for Head103[0]
    Creating event Tail103[0]
    Setting argument for Tail103[0]
    Scheduling activity Head103[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend[0] delaying for 2 time units
Initiating event Tail100[0]
    Tail of packet 100 free to move out of module 3
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Tail101[0]
    Event Tail101[0] signalling semaphore NetRdy0[0]
    - Activity Head102[0] released; semaphore value unchanged
    Event Tail101[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 101 free to move out of module 1
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is buffer 3
    - That buffer has space, head free to move
    Rescheduling event Head101[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is buffer 1
    - That buffer has space, head free to move
    Rescheduling event Head102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.5>>
Initiating event Tail100[0]
    Tail of packet 100 moves from buffer 3 to output port 50
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Tail101[0]
    Tail of packet 101 moves from buffer 1 to buffer 2
    - Packet 101 status: 2/2
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 moves from buffer 2 
    Head of packet 101 moves to buffer 3 
    - Packet 101 status: 2/1 3/1
    - Head at the front of the buffer
    Rescheduling event Head101[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 moves from input port 0
    Tail of packet 102 wakes up
    Scheduling activity Tail102[0] to occur in 0.5 time units
    Head of packet 102 moves to buffer 1 
    - Packet 102 status: 0/1 1/1
    - Head at the front of the buffer
    Rescheduling event Head102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7>>
Initiating event Tail100[0]
    Packet 100 queued at ouput port 50
    Event Tail100[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail100[0] set to deleting mode
Event Tail100[0] terminating
Initiating event Tail101[0]
    Tail of packet 101 free to move out of module 2
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is output port 50
    - Output port queue full, head sleeps
    Rescheduling event Head101[0] to wait for semaphore FreeSpace50[0]
    - Semaphore FreeSpace50[0] = 0; Head101 waits
Initiating event Tail102[0]
    Tail of packet 102 free to move out of module 0
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is buffer 2
    - That buffer has space, head free to move
    Rescheduling event Head102[0] to occur in 0.5 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 100 received
    Scheduling activity Head101[0] to occur in 0.5 time units
Receiving packet 100 at time 7
    Life time = 7; Total time in the net = 9
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.5>>
Initiating event Tail101[0]
    Tail of packet 101 moves from buffer 2 to buffer 3
    - Packet 101 status: 3/2
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Tail102[0]
    Tail of packet 102 moves from input port 0 to buffer 1
    - Packet 102 status: 1/2
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 moves from buffer 1 
    Head of packet 102 moves to buffer 2 
    - Packet 102 status: 1/1 2/1
    - Head at the front of the buffer
    Rescheduling event Head102[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 moves from buffer 3 
    Head of packet 101 moves to output port 50 
    Event Head101[0] set to deleting mode
Event Head101[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8>>
Initiating event Head103[0]
    Rescheduling event Head103[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head103 waits
Transferring to process UserSend[0]
Packet 103 delivered to net at time 8
    Creating packet 104 of size 2
    Attempting to send packet 104 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head104[0]
    Setting argument for Head104[0]
    Creating event Tail104[0]
    Setting argument for Tail104[0]
    Scheduling activity Head104[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend[0] delaying for 2 time units
Initiating event Tail101[0]
    Tail of packet 101 free to move out of module 3
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Tail102[0]
    Event Tail102[0] signalling semaphore NetRdy0[0]
    - Activity Head103[0] released; semaphore value unchanged
    Event Tail102[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 102 free to move out of module 1
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is buffer 3
    - That buffer has space, head free to move
    Rescheduling event Head102[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is buffer 1
    - That buffer has space, head free to move
    Rescheduling event Head103[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.5>>
Initiating event Tail101[0]
    Tail of packet 101 moves from buffer 3 to output port 50
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Tail102[0]
    Tail of packet 102 moves from buffer 1 to buffer 2
    - Packet 102 status: 2/2
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 moves from buffer 2 
    Head of packet 102 moves to buffer 3 
    - Packet 102 status: 2/1 3/1
    - Head at the front of the buffer
    Rescheduling event Head102[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 moves from input port 0
    Tail of packet 103 wakes up
    Scheduling activity Tail103[0] to occur in 0.5 time units
    Head of packet 103 moves to buffer 1 
    - Packet 103 status: 0/1 1/1
    - Head at the front of the buffer
    Rescheduling event Head103[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9>>
Initiating event Tail101[0]
    Packet 101 queued at ouput port 50
    Event Tail101[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail101[0] set to deleting mode
Event Tail101[0] terminating
Initiating event Tail102[0]
    Tail of packet 102 free to move out of module 2
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is output port 50
    - Output port queue full, head sleeps
    Rescheduling event Head102[0] to wait for semaphore FreeSpace50[0]
    - Semaphore FreeSpace50[0] = 0; Head102 waits
Initiating event Tail103[0]
    Tail of packet 103 free to move out of module 0
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is buffer 2
    - That buffer has space, head free to move
    Rescheduling event Head103[0] to occur in 0.5 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 101 received
    Scheduling activity Head102[0] to occur in 0.5 time units
Receiving packet 101 at time 9
    Life time = 7; Total time in the net = 9
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.5>>
Initiating event Tail102[0]
    Tail of packet 102 moves from buffer 2 to buffer 3
    - Packet 102 status: 3/2
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Tail103[0]
    Tail of packet 103 moves from input port 0 to buffer 1
    - Packet 103 status: 1/2
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 moves from buffer 1 
    Head of packet 103 moves to buffer 2 
    - Packet 103 status: 1/1 2/1
    - Head at the front of the buffer
    Rescheduling event Head103[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 moves from buffer 3 
    Head of packet 102 moves to output port 50 
    Event Head102[0] set to deleting mode
Event Head102[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10>>
Initiating event Head104[0]
    Rescheduling event Head104[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head104 waits
Transferring to process UserSend[0]
Packet 104 delivered to net at time 10
    Creating packet 105 of size 2
    Attempting to send packet 105 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head105[0]
    Setting argument for Head105[0]
    Creating event Tail105[0]
    Setting argument for Tail105[0]
    Scheduling activity Head105[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend[0] delaying for 2 time units
Initiating event Tail102[0]
    Tail of packet 102 free to move out of module 3
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Tail103[0]
    Event Tail103[0] signalling semaphore NetRdy0[0]
    - Activity Head104[0] released; semaphore value unchanged
    Event Tail103[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 103 free to move out of module 1
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is buffer 3
    - That buffer has space, head free to move
    Rescheduling event Head103[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 determining its next module
    - Head's next module is buffer 1
    - That buffer has space, head free to move
    Rescheduling event Head104[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10.5>>
Initiating event Tail102[0]
    Tail of packet 102 moves from buffer 3 to output port 50
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Tail103[0]
    Tail of packet 103 moves from buffer 1 to buffer 2
    - Packet 103 status: 2/2
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 moves from buffer 2 
    Head of packet 103 moves to buffer 3 
    - Packet 103 status: 2/1 3/1
    - Head at the front of the buffer
    Rescheduling event Head103[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 moves from input port 0
    Tail of packet 104 wakes up
    Scheduling activity Tail104[0] to occur in 0.5 time units
    Head of packet 104 moves to buffer 1 
    - Packet 104 status: 0/1 1/1
    - Head at the front of the buffer
    Rescheduling event Head104[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11>>
Initiating event Tail102[0]
    Packet 102 queued at ouput port 50
    Event Tail102[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail102[0] set to deleting mode
Event Tail102[0] terminating
Initiating event Tail103[0]
    Tail of packet 103 free to move out of module 2
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is output port 50
    - Output port queue full, head sleeps
    Rescheduling event Head103[0] to wait for semaphore FreeSpace50[0]
    - Semaphore FreeSpace50[0] = 0; Head103 waits
Initiating event Tail104[0]
    Tail of packet 104 free to move out of module 0
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 determining its next module
    - Head's next module is buffer 2
    - That buffer has space, head free to move
    Rescheduling event Head104[0] to occur in 0.5 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 102 received
    Scheduling activity Head103[0] to occur in 0.5 time units
Receiving packet 102 at time 11
    Life time = 7; Total time in the net = 9
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11.5>>
Initiating event Tail103[0]
    Tail of packet 103 moves from buffer 2 to buffer 3
    - Packet 103 status: 3/2
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Tail104[0]
    Tail of packet 104 moves from input port 0 to buffer 1
    - Packet 104 status: 1/2
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 moves from buffer 1 
    Head of packet 104 moves to buffer 2 
    - Packet 104 status: 1/1 2/1
    - Head at the front of the buffer
    Rescheduling event Head104[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 moves from buffer 3 
    Head of packet 103 moves to output port 50 
    Event Head103[0] set to deleting mode
Event Head103[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
Initiating event Head105[0]
    Rescheduling event Head105[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head105 waits
Transferring to process UserSend[0]
Packet 105 delivered to net at time 12
Process UserSend[0] terminating
Initiating event Tail103[0]
    Tail of packet 103 free to move out of module 3
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Tail104[0]
    Event Tail104[0] signalling semaphore NetRdy0[0]
    - Activity Head105[0] released; semaphore value unchanged
    Event Tail104[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 2
    Tail of packet 104 free to move out of module 1
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 determining its next module
    - Head's next module is buffer 3
    - That buffer has space, head free to move
    Rescheduling event Head104[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 determining its next module
    - Head's next module is buffer 1
    - That buffer has space, head free to move
    Rescheduling event Head105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12.5>>
Initiating event Tail103[0]
    Tail of packet 103 moves from buffer 3 to output port 50
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Tail104[0]
    Tail of packet 104 moves from buffer 1 to buffer 2
    - Packet 104 status: 2/2
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 moves from buffer 2 
    Head of packet 104 moves to buffer 3 
    - Packet 104 status: 2/1 3/1
    - Head at the front of the buffer
    Rescheduling event Head104[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 moves from input port 0
    Tail of packet 105 wakes up
    Scheduling activity Tail105[0] to occur in 0.5 time units
    Head of packet 105 moves to buffer 1 
    - Packet 105 status: 0/1 1/1
    - Head at the front of the buffer
    Rescheduling event Head105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13>>
Initiating event Tail103[0]
    Packet 103 queued at ouput port 50
    Event Tail103[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail103[0] set to deleting mode
Event Tail103[0] terminating
Initiating event Tail104[0]
    Tail of packet 104 free to move out of module 2
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 determining its next module
    - Head's next module is output port 50
    - Output port queue full, head sleeps
    Rescheduling event Head104[0] to wait for semaphore FreeSpace50[0]
    - Semaphore FreeSpace50[0] = 0; Head104 waits
Initiating event Tail105[0]
    Tail of packet 105 free to move out of module 0
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 determining its next module
    - Head's next module is buffer 2
    - That buffer has space, head free to move
    Rescheduling event Head105[0] to occur in 0.5 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 103 received
    Scheduling activity Head104[0] to occur in 0.5 time units
Receiving packet 103 at time 13
    Life time = 7; Total time in the net = 9
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13.5>>
Initiating event Tail104[0]
    Tail of packet 104 moves from buffer 2 to buffer 3
    - Packet 104 status: 3/2
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Tail105[0]
    Tail of packet 105 moves from input port 0 to buffer 1
    - Packet 105 status: 1/2
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 moves from buffer 1 
    Head of packet 105 moves to buffer 2 
    - Packet 105 status: 1/1 2/1
    - Head at the front of the buffer
    Rescheduling event Head105[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 moves from buffer 3 
    Head of packet 104 moves to output port 50 
    Event Head104[0] set to deleting mode
Event Head104[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14>>
Initiating event Tail104[0]
    Tail of packet 104 free to move out of module 3
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Tail105[0]
    Event Tail105[0] signalling semaphore NetRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Event Tail105[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 3
    Tail of packet 105 free to move out of module 1
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 determining its next module
    - Head's next module is buffer 3
    - That buffer has space, head free to move
    Rescheduling event Head105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14.5>>
Initiating event Tail104[0]
    Tail of packet 104 moves from buffer 3 to output port 50
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Tail105[0]
    Tail of packet 105 moves from buffer 1 to buffer 2
    - Packet 105 status: 2/2
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 moves from buffer 2 
    Head of packet 105 moves to buffer 3 
    - Packet 105 status: 2/1 3/1
    - Head at the front of the buffer
    Rescheduling event Head105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 15>>
Initiating event Tail104[0]
    Packet 104 queued at ouput port 50
    Event Tail104[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail104[0] set to deleting mode
Event Tail104[0] terminating
Initiating event Tail105[0]
    Tail of packet 105 free to move out of module 2
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 determining its next module
    - Head's next module is output port 50
    - Output port queue full, head sleeps
    Rescheduling event Head105[0] to wait for semaphore FreeSpace50[0]
    - Semaphore FreeSpace50[0] = 0; Head105 waits
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 104 received
    Scheduling activity Head105[0] to occur in 0.5 time units
Receiving packet 104 at time 15
    Life time = 7; Total time in the net = 9
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 15.5>>
Initiating event Tail105[0]
    Tail of packet 105 moves from buffer 2 to buffer 3
    - Packet 105 status: 3/2
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 moves from buffer 3 
    Head of packet 105 moves to output port 50 
    Event Head105[0] set to deleting mode
Event Head105[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16>>
Initiating event Tail105[0]
    Tail of packet 105 free to move out of module 3
    Rescheduling event Tail105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16.5>>
Initiating event Tail105[0]
    Tail of packet 105 moves from buffer 3 to output port 50
    Rescheduling event Tail105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17>>
Initiating event Tail105[0]
    Packet 105 queued at ouput port 50
    Event Tail105[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail105[0] set to deleting mode
Event Tail105[0] terminating
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 105 received
Receiving packet 105 at time 17
    Life time = 7; Total time in the net = 9
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 17

