    Creating real valued state variable SimTime[0] = 0
Number of Packets = 6, Packet size = 2, Buffer Size = 2
Head doesn't wait for tail, Buffer threshold = 1
Flit Delay = 1, Packet Delay = 1
Mux Delay = 1, Mux Delay = 1, Demux Delay = 1

    Creating input port 0
    Creating semaphore PortRdy0[0] with value 2
    Creating semaphore NetRdy0[0] with value 1
    Creating output port 50
    Creating semaphore FreeSpace50[0] with value 2
    Creating semaphore PacketAvail50[0] with value 0
    Connecting input port 0 to output port 50
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
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
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
    Head of packet 100 moves to output port 50 
    Event Head100[0] set to deleting mode
Event Head100[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
Initiating event Tail100[0]
    Tail of packet 100 free to move out of module 0
    Rescheduling event Tail100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.5>>
Initiating event Tail100[0]
    Tail of packet 100 moves from input port 0 to output port 50
    Rescheduling event Tail100[0] to occur in 0.5 time units
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
    - Port full, send fails
    Process UserSend[0] waiting at semaphore PortRdy0[0], value = 0
Initiating event Tail100[0]
    Event Tail100[0] signalling semaphore NetRdy0[0]
    - Activity Head101[0] released; semaphore value unchanged
    Event Tail100[0] signalling semaphore PortRdy0[0]
    - Activity UserSend[0] released; semaphore value unchanged
    Packet 100 queued at ouput port 50
    Event Tail100[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail100[0] set to deleting mode
Event Tail100[0] terminating
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head101[0] to occur in 0.5 time units
Transferring to process UserSend[0]
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
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 100 received
Receiving packet 100 at time 4
    Life time = 4; Total time in the net = 6
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4.5>>
Initiating event Head101[0]
    Head of packet 101 moves from input port 0
    Tail of packet 101 wakes up
    Scheduling activity Tail101[0] to occur in 0.5 time units
    Head of packet 101 moves to output port 50 
    Event Head101[0] set to deleting mode
Event Head101[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5>>
Initiating event Tail101[0]
    Tail of packet 101 free to move out of module 0
    Rescheduling event Tail101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.5>>
Initiating event Tail101[0]
    Tail of packet 101 moves from input port 0 to output port 50
    Rescheduling event Tail101[0] to occur in 0.5 time units
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
    - Port full, send fails
    Process UserSend[0] waiting at semaphore PortRdy0[0], value = 0
Initiating event Tail101[0]
    Event Tail101[0] signalling semaphore NetRdy0[0]
    - Activity Head102[0] released; semaphore value unchanged
    Event Tail101[0] signalling semaphore PortRdy0[0]
    - Activity UserSend[0] released; semaphore value unchanged
    Packet 101 queued at ouput port 50
    Event Tail101[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail101[0] set to deleting mode
Event Tail101[0] terminating
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head102[0] to occur in 0.5 time units
Transferring to process UserSend[0]
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
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 101 received
Receiving packet 101 at time 6
    Life time = 4; Total time in the net = 6
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.5>>
Initiating event Head102[0]
    Head of packet 102 moves from input port 0
    Tail of packet 102 wakes up
    Scheduling activity Tail102[0] to occur in 0.5 time units
    Head of packet 102 moves to output port 50 
    Event Head102[0] set to deleting mode
Event Head102[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7>>
Initiating event Tail102[0]
    Tail of packet 102 free to move out of module 0
    Rescheduling event Tail102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.5>>
Initiating event Tail102[0]
    Tail of packet 102 moves from input port 0 to output port 50
    Rescheduling event Tail102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8>>
Initiating event Head103[0]
    Rescheduling event Head103[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head103 waits
Transferring to process UserSend[0]
Packet 103 delivered to net at time 8
Process UserSend[0] terminating
Initiating event Tail102[0]
    Event Tail102[0] signalling semaphore NetRdy0[0]
    - Activity Head103[0] released; semaphore value unchanged
    Event Tail102[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Packet 102 queued at ouput port 50
    Event Tail102[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail102[0] set to deleting mode
Event Tail102[0] terminating
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head103[0] to occur in 0.5 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 102 received
Receiving packet 102 at time 8
    Life time = 4; Total time in the net = 6
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.5>>
Initiating event Head103[0]
    Head of packet 103 moves from input port 0
    Tail of packet 103 wakes up
    Scheduling activity Tail103[0] to occur in 0.5 time units
    Head of packet 103 moves to output port 50 
    Event Head103[0] set to deleting mode
Event Head103[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9>>
Initiating event Tail103[0]
    Tail of packet 103 free to move out of module 0
    Rescheduling event Tail103[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.5>>
Initiating event Tail103[0]
    Tail of packet 103 moves from input port 0 to output port 50
    Rescheduling event Tail103[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10>>
Initiating event Tail103[0]
    Event Tail103[0] signalling semaphore NetRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Event Tail103[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 2
    Packet 103 queued at ouput port 50
    Event Tail103[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail103[0] set to deleting mode
Event Tail103[0] terminating
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 103 received
Receiving packet 103 at time 10
    Life time = 4; Total time in the net = 6
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 10

