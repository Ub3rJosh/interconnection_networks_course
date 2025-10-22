    Creating real valued state variable SimTime[0] = 0
Number of Packets = 6, Packet size = 2, Buffer Size = 2
Head doesn't wait for tail, Buffer threshold = 1
Flit Delay = 1, Packet Delay = 1
Mux Delay = 1, Mux Delay = 1, Demux Delay = 1

    Creating input port 0
    Creating semaphore PortRdy0[0] with value 2
    Creating semaphore NetRdy0[0] with value 1
    Creating input port 1
    Creating semaphore PortRdy1[0] with value 2
    Creating semaphore NetRdy1[0] with value 1
    Creating output port 50
    Creating semaphore FreeSpace50[0] with value 1
    Creating semaphore PacketAvail50[0] with value 0
    Creating network mux (id = 20, 2 inputs)
    Creating semaphore MuxSema20[0] with value 1
    Creating network buffer (id = 10, size = 2)
    Creating network buffer (id = 11, size = 2)
    Creating network buffer (id = 20, size = 2)
    Connecting input port 0 to buffer 10
    Connecting input port 1 to buffer 11
    Connecting buffer 10 to mux 20
    Connecting buffer 11 to mux 20
    Connecting mux 20 to buffer 20
    Connecting buffer 20 to output port 50
    Creating process UserSend0[0]
    Setting argument for UserSend0[0]
    Scheduling activity UserSend0[0] to occur in 0 time units
    Creating process UserSend1[0]
    Setting argument for UserSend1[0]
    Scheduling activity UserSend1[0] to occur in 0 time units
    Creating process UserRecv[0]
    Scheduling activity UserRecv[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process UserSend0[0]
    Creating packet 100 of size 2
    Attempting to send packet 100 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head100[0]
    Setting argument for Head100[0]
    Creating event Tail100[0]
    Setting argument for Tail100[0]
    Scheduling activity Head100[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend0[0] delaying for 2 time units
Transferring to process UserSend1[0]
    Creating packet 200 of size 2
    Attempting to send packet 200 through network port 1
    - Source module = 0, Destination module = 1
    Creating event Head200[0]
    Setting argument for Head200[0]
    Creating event Tail200[0]
    Setting argument for Tail200[0]
    Scheduling activity Head200[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2>>
Initiating event Head100[0]
    Head of packet 100 at front of input port queue 0
    Head of packet 100 determining its next module
    - Head's next module is buffer 10
    - That buffer has space, head free to move
    Rescheduling event Head100[0] to occur in 0.5 time units
Transferring to process UserSend0[0]
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
    Process UserSend0[0] delaying for 2 time units
Initiating event Head200[0]
    Head of packet 200 at front of input port queue 1
    Head of packet 200 determining its next module
    - Head's next module is buffer 11
    - That buffer has space, head free to move
    Rescheduling event Head200[0] to occur in 0.5 time units
Transferring to process UserSend1[0]
Packet 200 delivered to net at time 2
    Creating packet 201 of size 2
    Attempting to send packet 201 through network port 1
    - Source module = 0, Destination module = 1
    Creating event Head201[0]
    Setting argument for Head201[0]
    Creating event Tail201[0]
    Setting argument for Tail201[0]
    Scheduling activity Head201[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2.5>>
Initiating event Head100[0]
    Head of packet 100 moves from input port 0
    Tail of packet 100 wakes up
    Scheduling activity Tail100[0] to occur in 0.5 time units
    Head of packet 100 moves to buffer 10 
    - Packet 100 status: 0/1 10/1
    - Head at the front of the buffer
    Rescheduling event Head100[0] to occur in 0.5 time units
Initiating event Head200[0]
    Head of packet 200 moves from input port 1
    Tail of packet 200 wakes up
    Scheduling activity Tail200[0] to occur in 0.5 time units
    Head of packet 200 moves to buffer 11 
    - Packet 200 status: 1/1 11/1
    - Head at the front of the buffer
    Rescheduling event Head200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
Initiating event Tail100[0]
    Tail of packet 100 free to move out of module 0
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head100[0] to occur in 1 time units
Initiating event Tail200[0]
    Tail of packet 200 free to move out of module 1
    Rescheduling event Tail200[0] to occur in 0.5 time units
Initiating event Head200[0]
    Head of packet 200 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head200[0] to occur in 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.5>>
Initiating event Tail100[0]
    Tail of packet 100 moves from input port 0 to buffer 10
    - Packet 100 status: 10/2
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Tail200[0]
    Tail of packet 200 moves from input port 1 to buffer 11
    - Packet 200 status: 11/2
    Rescheduling event Tail200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4>>
Initiating event Head101[0]
    Rescheduling event Head101[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head101 waits
Transferring to process UserSend0[0]
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
    Process UserSend0[0] delaying for 2 time units
Initiating event Head201[0]
    Rescheduling event Head201[0] to wait for semaphore NetRdy1[0]
    - Semaphore NetRdy1[0] = 0; Head201 waits
Transferring to process UserSend1[0]
Packet 201 delivered to net at time 4
    Creating packet 202 of size 2
    Attempting to send packet 202 through network port 1
    - Source module = 0, Destination module = 1
    Creating event Head202[0]
    Setting argument for Head202[0]
    Creating event Tail202[0]
    Setting argument for Tail202[0]
    Scheduling activity Head202[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2 time units
Initiating event Head100[0]
    Mux 20 free, head of packet 100 delays mux transfer time 1
    Rescheduling event Head100[0] to occur in 1 time units
Initiating event Head200[0]
    Mux 20 in use, head of packet 200 sleeps
    Rescheduling event Head200[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head200 waits
Initiating event Tail100[0]
    Event Tail100[0] signalling semaphore NetRdy0[0]
    - Activity Head101[0] released; semaphore value unchanged
    Event Tail100[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 100 has caught up with its head
Initiating event Tail200[0]
    Event Tail200[0] signalling semaphore NetRdy1[0]
    - Activity Head201[0] released; semaphore value unchanged
    Event Tail200[0] signalling semaphore PortRdy1[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 200 has caught up with its head
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is buffer 10
    - That buffer full head sleeps
Initiating event Head201[0]
    Head of packet 201 determining its next module
    - Head's next module is buffer 11
    - That buffer full head sleeps
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5>>
Initiating event Head100[0]
    Head of packet 100 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.5>>
Initiating event Head100[0]
    Head of packet 100 moves from buffer 10 
    Flit Head101 free to enter module 10
    Scheduling activity Head101[0] to occur in 1 time units
    Tail of packet 100 wakes up
    Scheduling activity Tail100[0] to occur in 0.5 time units
    Head of packet 100 moves to buffer 20 
    - Packet 100 status: 10/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6>>
Initiating event Head102[0]
    Rescheduling event Head102[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head102 waits
Transferring to process UserSend0[0]
Packet 102 delivered to net at time 6
    Creating packet 103 of size 2
    Attempting to send packet 103 through network port 0
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend0[0] continues past semaphore PortRdy0[0], new value = 0
    Creating packet 103 of size 2
    Attempting to send packet 103 through network port 0
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend0[0] waiting at semaphore PortRdy0[0], value = 0
Initiating event Head202[0]
    Rescheduling event Head202[0] to wait for semaphore NetRdy1[0]
    - Semaphore NetRdy1[0] = 0; Head202 waits
Transferring to process UserSend1[0]
Packet 202 delivered to net at time 6
    Creating packet 203 of size 2
    Attempting to send packet 203 through network port 1
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend1[0] continues past semaphore PortRdy1[0], new value = 0
    Creating packet 203 of size 2
    Attempting to send packet 203 through network port 1
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend1[0] waiting at semaphore PortRdy1[0], value = 0
Initiating event Tail100[0]
    Tail of packet 100 free to move out of module 10
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.5>>
Initiating event Head101[0]
    Head of packet 101 moves from input port 0
    Tail of packet 101 wakes up
    Scheduling activity Tail101[0] to occur in 0.5 time units
    Head of packet 101 moves to buffer 10 
    - Packet 101 status: 0/1 10/1
    - Head behind other packets in the buffer
Initiating event Tail100[0]
    Tail of packet 100 moves from buffer 10 to buffer 20
    Scheduling activity Head101[0] to occur in 0.5 time units
    - Packet 100 status: 20/2
    Packet 100 signals MUX semaphore 20
    Event Tail100[0] signalling semaphore MuxSema20[0]
    - Activity Head200[0] released; semaphore value unchanged
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 moves from buffer 20 
    Head of packet 100 moves to output port 50 
    Event Head100[0] set to deleting mode
Event Head100[0] terminating
Initiating event Head200[0]
    Head of packet 200 wakes up from mux 20
    Rescheduling event Head200[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7>>
Initiating event Tail101[0]
    Tail of packet 101 free to move out of module 0
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head101[0] to occur in 1 time units
Initiating event Tail100[0]
    Tail of packet 100 free to move out of module 20
    Rescheduling event Tail100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.5>>
Initiating event Tail101[0]
    Tail of packet 101 moves from input port 0 to buffer 10
    - Packet 101 status: 10/2
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Tail100[0]
    Tail of packet 100 moves from buffer 20 to output port 50
    Rescheduling event Tail100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8>>
Initiating event Head200[0]
    Head of packet 200 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head200[0] to occur in 0.5 time units
Initiating event Head101[0]
    Mux 20 in use, head of packet 101 sleeps
    Rescheduling event Head101[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head101 waits
Initiating event Tail101[0]
    Event Tail101[0] signalling semaphore NetRdy0[0]
    - Activity Head102[0] released; semaphore value unchanged
    Event Tail101[0] signalling semaphore PortRdy0[0]
    - Activity UserSend0[0] released; semaphore value unchanged
    Tail of packet 101 has caught up with its head
Initiating event Tail100[0]
    Packet 100 queued at ouput port 50
    Event Tail100[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail100[0] set to deleting mode
Event Tail100[0] terminating
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is buffer 10
    - That buffer full head sleeps
Transferring to process UserSend0[0]
    Creating packet 103 of size 2
    Attempting to send packet 103 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head103[0]
    Setting argument for Head103[0]
    Creating event Tail103[0]
    Setting argument for Tail103[0]
    Scheduling activity Head103[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend0[0] delaying for 2 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 100 received
Receiving packet 100 at time 8
    Life time = 8; Total time in the net = 10
    Time blocked in the net = 0, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8.5>>
Initiating event Head200[0]
    Head of packet 200 moves from buffer 11 
    Flit Head201 free to enter module 11
    Scheduling activity Head201[0] to occur in 1 time units
    Tail of packet 200 wakes up
    Scheduling activity Tail200[0] to occur in 0.5 time units
    Head of packet 200 moves to buffer 20 
    - Packet 200 status: 11/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9>>
Initiating event Tail200[0]
    Tail of packet 200 free to move out of module 11
    Rescheduling event Tail200[0] to occur in 0.5 time units
Initiating event Head200[0]
    Head of packet 200 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.5>>
Initiating event Head201[0]
    Head of packet 201 moves from input port 1
    Tail of packet 201 wakes up
    Scheduling activity Tail201[0] to occur in 0.5 time units
    Head of packet 201 moves to buffer 11 
    - Packet 201 status: 1/1 11/1
    - Head behind other packets in the buffer
Initiating event Tail200[0]
    Tail of packet 200 moves from buffer 11 to buffer 20
    Scheduling activity Head201[0] to occur in 0.5 time units
    - Packet 200 status: 20/2
    Packet 200 signals MUX semaphore 20
    Event Tail200[0] signalling semaphore MuxSema20[0]
    - Activity Head101[0] released; semaphore value unchanged
    Rescheduling event Tail200[0] to occur in 0.5 time units
Initiating event Head200[0]
    Head of packet 200 moves from buffer 20 
    Head of packet 200 moves to output port 50 
    Event Head200[0] set to deleting mode
Event Head200[0] terminating
Initiating event Head101[0]
    Head of packet 101 wakes up from mux 20
    Rescheduling event Head101[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10>>
Initiating event Head103[0]
    Rescheduling event Head103[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head103 waits
Transferring to process UserSend0[0]
Packet 103 delivered to net at time 10
    Creating packet 104 of size 2
    Attempting to send packet 104 through network port 0
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend0[0] waiting at semaphore PortRdy0[0], value = 0
Initiating event Tail201[0]
    Tail of packet 201 free to move out of module 1
    Rescheduling event Tail201[0] to occur in 0.5 time units
Initiating event Head201[0]
    Head of packet 201 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head201[0] to occur in 1 time units
Initiating event Tail200[0]
    Tail of packet 200 free to move out of module 20
    Rescheduling event Tail200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10.5>>
Initiating event Tail201[0]
    Tail of packet 201 moves from input port 1 to buffer 11
    - Packet 201 status: 11/2
    Rescheduling event Tail201[0] to occur in 0.5 time units
Initiating event Tail200[0]
    Tail of packet 200 moves from buffer 20 to output port 50
    Rescheduling event Tail200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11>>
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head101[0] to occur in 0.5 time units
Initiating event Head201[0]
    Mux 20 in use, head of packet 201 sleeps
    Rescheduling event Head201[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head201 waits
Initiating event Tail201[0]
    Event Tail201[0] signalling semaphore NetRdy1[0]
    - Activity Head202[0] released; semaphore value unchanged
    Event Tail201[0] signalling semaphore PortRdy1[0]
    - Activity UserSend1[0] released; semaphore value unchanged
    Tail of packet 201 has caught up with its head
Initiating event Tail200[0]
    Packet 200 queued at ouput port 50
    Event Tail200[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail200[0] set to deleting mode
Event Tail200[0] terminating
Initiating event Head202[0]
    Head of packet 202 determining its next module
    - Head's next module is buffer 11
    - That buffer full head sleeps
Transferring to process UserSend1[0]
    Creating packet 203 of size 2
    Attempting to send packet 203 through network port 1
    - Source module = 0, Destination module = 1
    Creating event Head203[0]
    Setting argument for Head203[0]
    Creating event Tail203[0]
    Setting argument for Tail203[0]
    Scheduling activity Head203[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 200 received
Receiving packet 200 at time 11
    Life time = 11; Total time in the net = 13
    Time blocked in the net = 3, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11.5>>
Initiating event Head101[0]
    Head of packet 101 moves from buffer 10 
    Flit Head102 free to enter module 10
    Scheduling activity Head102[0] to occur in 1 time units
    Tail of packet 101 wakes up
    Scheduling activity Tail101[0] to occur in 0.5 time units
    Head of packet 101 moves to buffer 20 
    - Packet 101 status: 10/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
Initiating event Tail101[0]
    Tail of packet 101 free to move out of module 10
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12.5>>
Initiating event Head102[0]
    Head of packet 102 moves from input port 0
    Tail of packet 102 wakes up
    Scheduling activity Tail102[0] to occur in 0.5 time units
    Head of packet 102 moves to buffer 10 
    - Packet 102 status: 0/1 10/1
    - Head behind other packets in the buffer
Initiating event Tail101[0]
    Tail of packet 101 moves from buffer 10 to buffer 20
    Scheduling activity Head102[0] to occur in 0.5 time units
    - Packet 101 status: 20/2
    Packet 101 signals MUX semaphore 20
    Event Tail101[0] signalling semaphore MuxSema20[0]
    - Activity Head201[0] released; semaphore value unchanged
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 moves from buffer 20 
    Head of packet 101 moves to output port 50 
    Event Head101[0] set to deleting mode
Event Head101[0] terminating
Initiating event Head201[0]
    Head of packet 201 wakes up from mux 20
    Rescheduling event Head201[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13>>
Initiating event Head203[0]
    Rescheduling event Head203[0] to wait for semaphore NetRdy1[0]
    - Semaphore NetRdy1[0] = 0; Head203 waits
Transferring to process UserSend1[0]
Packet 203 delivered to net at time 13
    Creating packet 204 of size 2
    Attempting to send packet 204 through network port 1
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend1[0] waiting at semaphore PortRdy1[0], value = 0
Initiating event Tail102[0]
    Tail of packet 102 free to move out of module 0
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head102[0] to occur in 1 time units
Initiating event Tail101[0]
    Tail of packet 101 free to move out of module 20
    Rescheduling event Tail101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13.5>>
Initiating event Tail102[0]
    Tail of packet 102 moves from input port 0 to buffer 10
    - Packet 102 status: 10/2
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Tail101[0]
    Tail of packet 101 moves from buffer 20 to output port 50
    Rescheduling event Tail101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14>>
Initiating event Head201[0]
    Head of packet 201 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head201[0] to occur in 0.5 time units
Initiating event Head102[0]
    Mux 20 in use, head of packet 102 sleeps
    Rescheduling event Head102[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head102 waits
Initiating event Tail102[0]
    Event Tail102[0] signalling semaphore NetRdy0[0]
    - Activity Head103[0] released; semaphore value unchanged
    Event Tail102[0] signalling semaphore PortRdy0[0]
    - Activity UserSend0[0] released; semaphore value unchanged
    Tail of packet 102 has caught up with its head
Initiating event Tail101[0]
    Packet 101 queued at ouput port 50
    Event Tail101[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail101[0] set to deleting mode
Event Tail101[0] terminating
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is buffer 10
    - That buffer full head sleeps
Transferring to process UserSend0[0]
    Creating packet 104 of size 2
    Attempting to send packet 104 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head104[0]
    Setting argument for Head104[0]
    Creating event Tail104[0]
    Setting argument for Tail104[0]
    Scheduling activity Head104[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend0[0] delaying for 2 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 101 received
Receiving packet 101 at time 14
    Life time = 12; Total time in the net = 14
    Time blocked in the net = 4, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14.5>>
Initiating event Head201[0]
    Head of packet 201 moves from buffer 11 
    Flit Head202 free to enter module 11
    Scheduling activity Head202[0] to occur in 1 time units
    Tail of packet 201 wakes up
    Scheduling activity Tail201[0] to occur in 0.5 time units
    Head of packet 201 moves to buffer 20 
    - Packet 201 status: 11/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head201[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 15>>
Initiating event Tail201[0]
    Tail of packet 201 free to move out of module 11
    Rescheduling event Tail201[0] to occur in 0.5 time units
Initiating event Head201[0]
    Head of packet 201 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head201[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 15.5>>
Initiating event Head202[0]
    Head of packet 202 moves from input port 1
    Tail of packet 202 wakes up
    Scheduling activity Tail202[0] to occur in 0.5 time units
    Head of packet 202 moves to buffer 11 
    - Packet 202 status: 1/1 11/1
    - Head behind other packets in the buffer
Initiating event Tail201[0]
    Tail of packet 201 moves from buffer 11 to buffer 20
    Scheduling activity Head202[0] to occur in 0.5 time units
    - Packet 201 status: 20/2
    Packet 201 signals MUX semaphore 20
    Event Tail201[0] signalling semaphore MuxSema20[0]
    - Activity Head102[0] released; semaphore value unchanged
    Rescheduling event Tail201[0] to occur in 0.5 time units
Initiating event Head201[0]
    Head of packet 201 moves from buffer 20 
    Head of packet 201 moves to output port 50 
    Event Head201[0] set to deleting mode
Event Head201[0] terminating
Initiating event Head102[0]
    Head of packet 102 wakes up from mux 20
    Rescheduling event Head102[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16>>
Initiating event Head104[0]
    Rescheduling event Head104[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head104 waits
Transferring to process UserSend0[0]
Packet 104 delivered to net at time 16
    Creating packet 105 of size 2
    Attempting to send packet 105 through network port 0
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend0[0] waiting at semaphore PortRdy0[0], value = 0
Initiating event Tail202[0]
    Tail of packet 202 free to move out of module 1
    Rescheduling event Tail202[0] to occur in 0.5 time units
Initiating event Head202[0]
    Head of packet 202 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head202[0] to occur in 1 time units
Initiating event Tail201[0]
    Tail of packet 201 free to move out of module 20
    Rescheduling event Tail201[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16.5>>
Initiating event Tail202[0]
    Tail of packet 202 moves from input port 1 to buffer 11
    - Packet 202 status: 11/2
    Rescheduling event Tail202[0] to occur in 0.5 time units
Initiating event Tail201[0]
    Tail of packet 201 moves from buffer 20 to output port 50
    Rescheduling event Tail201[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17>>
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head102[0] to occur in 0.5 time units
Initiating event Head202[0]
    Mux 20 in use, head of packet 202 sleeps
    Rescheduling event Head202[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head202 waits
Initiating event Tail202[0]
    Event Tail202[0] signalling semaphore NetRdy1[0]
    - Activity Head203[0] released; semaphore value unchanged
    Event Tail202[0] signalling semaphore PortRdy1[0]
    - Activity UserSend1[0] released; semaphore value unchanged
    Tail of packet 202 has caught up with its head
Initiating event Tail201[0]
    Packet 201 queued at ouput port 50
    Event Tail201[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail201[0] set to deleting mode
Event Tail201[0] terminating
Initiating event Head203[0]
    Head of packet 203 determining its next module
    - Head's next module is buffer 11
    - That buffer full head sleeps
Transferring to process UserSend1[0]
    Creating packet 204 of size 2
    Attempting to send packet 204 through network port 1
    - Source module = 0, Destination module = 1
    Creating event Head204[0]
    Setting argument for Head204[0]
    Creating event Tail204[0]
    Setting argument for Tail204[0]
    Scheduling activity Head204[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 201 received
Receiving packet 201 at time 17
    Life time = 15; Total time in the net = 17
    Time blocked in the net = 7, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17.5>>
Initiating event Head102[0]
    Head of packet 102 moves from buffer 10 
    Flit Head103 free to enter module 10
    Scheduling activity Head103[0] to occur in 1 time units
    Tail of packet 102 wakes up
    Scheduling activity Tail102[0] to occur in 0.5 time units
    Head of packet 102 moves to buffer 20 
    - Packet 102 status: 10/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 18>>
Initiating event Tail102[0]
    Tail of packet 102 free to move out of module 10
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 18.5>>
Initiating event Head103[0]
    Head of packet 103 moves from input port 0
    Tail of packet 103 wakes up
    Scheduling activity Tail103[0] to occur in 0.5 time units
    Head of packet 103 moves to buffer 10 
    - Packet 103 status: 0/1 10/1
    - Head behind other packets in the buffer
Initiating event Tail102[0]
    Tail of packet 102 moves from buffer 10 to buffer 20
    Scheduling activity Head103[0] to occur in 0.5 time units
    - Packet 102 status: 20/2
    Packet 102 signals MUX semaphore 20
    Event Tail102[0] signalling semaphore MuxSema20[0]
    - Activity Head202[0] released; semaphore value unchanged
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 moves from buffer 20 
    Head of packet 102 moves to output port 50 
    Event Head102[0] set to deleting mode
Event Head102[0] terminating
Initiating event Head202[0]
    Head of packet 202 wakes up from mux 20
    Rescheduling event Head202[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 19>>
Initiating event Head204[0]
    Rescheduling event Head204[0] to wait for semaphore NetRdy1[0]
    - Semaphore NetRdy1[0] = 0; Head204 waits
Transferring to process UserSend1[0]
Packet 204 delivered to net at time 19
    Creating packet 205 of size 2
    Attempting to send packet 205 through network port 1
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend1[0] waiting at semaphore PortRdy1[0], value = 0
Initiating event Tail103[0]
    Tail of packet 103 free to move out of module 0
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head103[0] to occur in 1 time units
Initiating event Tail102[0]
    Tail of packet 102 free to move out of module 20
    Rescheduling event Tail102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 19.5>>
Initiating event Tail103[0]
    Tail of packet 103 moves from input port 0 to buffer 10
    - Packet 103 status: 10/2
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Tail102[0]
    Tail of packet 102 moves from buffer 20 to output port 50
    Rescheduling event Tail102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 20>>
Initiating event Head202[0]
    Head of packet 202 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head202[0] to occur in 0.5 time units
Initiating event Head103[0]
    Mux 20 in use, head of packet 103 sleeps
    Rescheduling event Head103[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head103 waits
Initiating event Tail103[0]
    Event Tail103[0] signalling semaphore NetRdy0[0]
    - Activity Head104[0] released; semaphore value unchanged
    Event Tail103[0] signalling semaphore PortRdy0[0]
    - Activity UserSend0[0] released; semaphore value unchanged
    Tail of packet 103 has caught up with its head
Initiating event Tail102[0]
    Packet 102 queued at ouput port 50
    Event Tail102[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail102[0] set to deleting mode
Event Tail102[0] terminating
Initiating event Head104[0]
    Head of packet 104 determining its next module
    - Head's next module is buffer 10
    - That buffer full head sleeps
Transferring to process UserSend0[0]
    Creating packet 105 of size 2
    Attempting to send packet 105 through network port 0
    - Source module = 0, Destination module = 1
    Creating event Head105[0]
    Setting argument for Head105[0]
    Creating event Tail105[0]
    Setting argument for Tail105[0]
    Scheduling activity Head105[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend0[0] delaying for 2 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 102 received
Receiving packet 102 at time 20
    Life time = 16; Total time in the net = 18
    Time blocked in the net = 8, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 20.5>>
Initiating event Head202[0]
    Head of packet 202 moves from buffer 11 
    Flit Head203 free to enter module 11
    Scheduling activity Head203[0] to occur in 1 time units
    Tail of packet 202 wakes up
    Scheduling activity Tail202[0] to occur in 0.5 time units
    Head of packet 202 moves to buffer 20 
    - Packet 202 status: 11/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 21>>
Initiating event Tail202[0]
    Tail of packet 202 free to move out of module 11
    Rescheduling event Tail202[0] to occur in 0.5 time units
Initiating event Head202[0]
    Head of packet 202 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 21.5>>
Initiating event Head203[0]
    Head of packet 203 moves from input port 1
    Tail of packet 203 wakes up
    Scheduling activity Tail203[0] to occur in 0.5 time units
    Head of packet 203 moves to buffer 11 
    - Packet 203 status: 1/1 11/1
    - Head behind other packets in the buffer
Initiating event Tail202[0]
    Tail of packet 202 moves from buffer 11 to buffer 20
    Scheduling activity Head203[0] to occur in 0.5 time units
    - Packet 202 status: 20/2
    Packet 202 signals MUX semaphore 20
    Event Tail202[0] signalling semaphore MuxSema20[0]
    - Activity Head103[0] released; semaphore value unchanged
    Rescheduling event Tail202[0] to occur in 0.5 time units
Initiating event Head202[0]
    Head of packet 202 moves from buffer 20 
    Head of packet 202 moves to output port 50 
    Event Head202[0] set to deleting mode
Event Head202[0] terminating
Initiating event Head103[0]
    Head of packet 103 wakes up from mux 20
    Rescheduling event Head103[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 22>>
Initiating event Head105[0]
    Rescheduling event Head105[0] to wait for semaphore NetRdy0[0]
    - Semaphore NetRdy0[0] = 0; Head105 waits
Transferring to process UserSend0[0]
Packet 105 delivered to net at time 22
Process UserSend0[0] terminating
Initiating event Tail203[0]
    Tail of packet 203 free to move out of module 1
    Rescheduling event Tail203[0] to occur in 0.5 time units
Initiating event Head203[0]
    Head of packet 203 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head203[0] to occur in 1 time units
Initiating event Tail202[0]
    Tail of packet 202 free to move out of module 20
    Rescheduling event Tail202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 22.5>>
Initiating event Tail203[0]
    Tail of packet 203 moves from input port 1 to buffer 11
    - Packet 203 status: 11/2
    Rescheduling event Tail203[0] to occur in 0.5 time units
Initiating event Tail202[0]
    Tail of packet 202 moves from buffer 20 to output port 50
    Rescheduling event Tail202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 23>>
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head103[0] to occur in 0.5 time units
Initiating event Head203[0]
    Mux 20 in use, head of packet 203 sleeps
    Rescheduling event Head203[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head203 waits
Initiating event Tail203[0]
    Event Tail203[0] signalling semaphore NetRdy1[0]
    - Activity Head204[0] released; semaphore value unchanged
    Event Tail203[0] signalling semaphore PortRdy1[0]
    - Activity UserSend1[0] released; semaphore value unchanged
    Tail of packet 203 has caught up with its head
Initiating event Tail202[0]
    Packet 202 queued at ouput port 50
    Event Tail202[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail202[0] set to deleting mode
Event Tail202[0] terminating
Initiating event Head204[0]
    Head of packet 204 determining its next module
    - Head's next module is buffer 11
    - That buffer full head sleeps
Transferring to process UserSend1[0]
    Creating packet 205 of size 2
    Attempting to send packet 205 through network port 1
    - Source module = 0, Destination module = 1
    Creating event Head205[0]
    Setting argument for Head205[0]
    Creating event Tail205[0]
    Setting argument for Tail205[0]
    Scheduling activity Head205[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2 time units
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 202 received
Receiving packet 202 at time 23
    Life time = 19; Total time in the net = 21
    Time blocked in the net = 11, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 23.5>>
Initiating event Head103[0]
    Head of packet 103 moves from buffer 10 
    Flit Head104 free to enter module 10
    Scheduling activity Head104[0] to occur in 1 time units
    Tail of packet 103 wakes up
    Scheduling activity Tail103[0] to occur in 0.5 time units
    Head of packet 103 moves to buffer 20 
    - Packet 103 status: 10/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head103[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 24>>
Initiating event Tail103[0]
    Tail of packet 103 free to move out of module 10
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head103[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 24.5>>
Initiating event Head104[0]
    Head of packet 104 moves from input port 0
    Tail of packet 104 wakes up
    Scheduling activity Tail104[0] to occur in 0.5 time units
    Head of packet 104 moves to buffer 10 
    - Packet 104 status: 0/1 10/1
    - Head behind other packets in the buffer
Initiating event Tail103[0]
    Tail of packet 103 moves from buffer 10 to buffer 20
    Scheduling activity Head104[0] to occur in 0.5 time units
    - Packet 103 status: 20/2
    Packet 103 signals MUX semaphore 20
    Event Tail103[0] signalling semaphore MuxSema20[0]
    - Activity Head203[0] released; semaphore value unchanged
    Rescheduling event Tail103[0] to occur in 0.5 time units
Initiating event Head103[0]
    Head of packet 103 moves from buffer 20 
    Head of packet 103 moves to output port 50 
    Event Head103[0] set to deleting mode
Event Head103[0] terminating
Initiating event Head203[0]
    Head of packet 203 wakes up from mux 20
    Rescheduling event Head203[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 25>>
Initiating event Head205[0]
    Rescheduling event Head205[0] to wait for semaphore NetRdy1[0]
    - Semaphore NetRdy1[0] = 0; Head205 waits
Transferring to process UserSend1[0]
Packet 205 delivered to net at time 25
Process UserSend1[0] terminating
Initiating event Tail104[0]
    Tail of packet 104 free to move out of module 0
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head104[0] to occur in 1 time units
Initiating event Tail103[0]
    Tail of packet 103 free to move out of module 20
    Rescheduling event Tail103[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 25.5>>
Initiating event Tail104[0]
    Tail of packet 104 moves from input port 0 to buffer 10
    - Packet 104 status: 10/2
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Tail103[0]
    Tail of packet 103 moves from buffer 20 to output port 50
    Rescheduling event Tail103[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 26>>
Initiating event Head203[0]
    Head of packet 203 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head203[0] to occur in 0.5 time units
Initiating event Head104[0]
    Mux 20 in use, head of packet 104 sleeps
    Rescheduling event Head104[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head104 waits
Initiating event Tail104[0]
    Event Tail104[0] signalling semaphore NetRdy0[0]
    - Activity Head105[0] released; semaphore value unchanged
    Event Tail104[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 104 has caught up with its head
Initiating event Tail103[0]
    Packet 103 queued at ouput port 50
    Event Tail103[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail103[0] set to deleting mode
Event Tail103[0] terminating
Initiating event Head105[0]
    Head of packet 105 determining its next module
    - Head's next module is buffer 10
    - That buffer full head sleeps
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 103 received
Receiving packet 103 at time 26
    Life time = 18; Total time in the net = 20
    Time blocked in the net = 10, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 26.5>>
Initiating event Head203[0]
    Head of packet 203 moves from buffer 11 
    Flit Head204 free to enter module 11
    Scheduling activity Head204[0] to occur in 1 time units
    Tail of packet 203 wakes up
    Scheduling activity Tail203[0] to occur in 0.5 time units
    Head of packet 203 moves to buffer 20 
    - Packet 203 status: 11/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head203[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 27>>
Initiating event Tail203[0]
    Tail of packet 203 free to move out of module 11
    Rescheduling event Tail203[0] to occur in 0.5 time units
Initiating event Head203[0]
    Head of packet 203 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head203[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 27.5>>
Initiating event Head204[0]
    Head of packet 204 moves from input port 1
    Tail of packet 204 wakes up
    Scheduling activity Tail204[0] to occur in 0.5 time units
    Head of packet 204 moves to buffer 11 
    - Packet 204 status: 1/1 11/1
    - Head behind other packets in the buffer
Initiating event Tail203[0]
    Tail of packet 203 moves from buffer 11 to buffer 20
    Scheduling activity Head204[0] to occur in 0.5 time units
    - Packet 203 status: 20/2
    Packet 203 signals MUX semaphore 20
    Event Tail203[0] signalling semaphore MuxSema20[0]
    - Activity Head104[0] released; semaphore value unchanged
    Rescheduling event Tail203[0] to occur in 0.5 time units
Initiating event Head203[0]
    Head of packet 203 moves from buffer 20 
    Head of packet 203 moves to output port 50 
    Event Head203[0] set to deleting mode
Event Head203[0] terminating
Initiating event Head104[0]
    Head of packet 104 wakes up from mux 20
    Rescheduling event Head104[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 28>>
Initiating event Tail204[0]
    Tail of packet 204 free to move out of module 1
    Rescheduling event Tail204[0] to occur in 0.5 time units
Initiating event Head204[0]
    Head of packet 204 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head204[0] to occur in 1 time units
Initiating event Tail203[0]
    Tail of packet 203 free to move out of module 20
    Rescheduling event Tail203[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 28.5>>
Initiating event Tail204[0]
    Tail of packet 204 moves from input port 1 to buffer 11
    - Packet 204 status: 11/2
    Rescheduling event Tail204[0] to occur in 0.5 time units
Initiating event Tail203[0]
    Tail of packet 203 moves from buffer 20 to output port 50
    Rescheduling event Tail203[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 29>>
Initiating event Head104[0]
    Head of packet 104 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head104[0] to occur in 0.5 time units
Initiating event Head204[0]
    Mux 20 in use, head of packet 204 sleeps
    Rescheduling event Head204[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head204 waits
Initiating event Tail204[0]
    Event Tail204[0] signalling semaphore NetRdy1[0]
    - Activity Head205[0] released; semaphore value unchanged
    Event Tail204[0] signalling semaphore PortRdy1[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 204 has caught up with its head
Initiating event Tail203[0]
    Packet 203 queued at ouput port 50
    Event Tail203[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail203[0] set to deleting mode
Event Tail203[0] terminating
Initiating event Head205[0]
    Head of packet 205 determining its next module
    - Head's next module is buffer 11
    - That buffer full head sleeps
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 203 received
Receiving packet 203 at time 29
    Life time = 18; Total time in the net = 20
    Time blocked in the net = 10, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 29.5>>
Initiating event Head104[0]
    Head of packet 104 moves from buffer 10 
    Flit Head105 free to enter module 10
    Scheduling activity Head105[0] to occur in 1 time units
    Tail of packet 104 wakes up
    Scheduling activity Tail104[0] to occur in 0.5 time units
    Head of packet 104 moves to buffer 20 
    - Packet 104 status: 10/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head104[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 30>>
Initiating event Tail104[0]
    Tail of packet 104 free to move out of module 10
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head104[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 30.5>>
Initiating event Head105[0]
    Head of packet 105 moves from input port 0
    Tail of packet 105 wakes up
    Scheduling activity Tail105[0] to occur in 0.5 time units
    Head of packet 105 moves to buffer 10 
    - Packet 105 status: 0/1 10/1
    - Head behind other packets in the buffer
Initiating event Tail104[0]
    Tail of packet 104 moves from buffer 10 to buffer 20
    Scheduling activity Head105[0] to occur in 0.5 time units
    - Packet 104 status: 20/2
    Packet 104 signals MUX semaphore 20
    Event Tail104[0] signalling semaphore MuxSema20[0]
    - Activity Head204[0] released; semaphore value unchanged
    Rescheduling event Tail104[0] to occur in 0.5 time units
Initiating event Head104[0]
    Head of packet 104 moves from buffer 20 
    Head of packet 104 moves to output port 50 
    Event Head104[0] set to deleting mode
Event Head104[0] terminating
Initiating event Head204[0]
    Head of packet 204 wakes up from mux 20
    Rescheduling event Head204[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 31>>
Initiating event Tail105[0]
    Tail of packet 105 free to move out of module 0
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head105[0] to occur in 1 time units
Initiating event Tail104[0]
    Tail of packet 104 free to move out of module 20
    Rescheduling event Tail104[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 31.5>>
Initiating event Tail105[0]
    Tail of packet 105 moves from input port 0 to buffer 10
    - Packet 105 status: 10/2
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Tail104[0]
    Tail of packet 104 moves from buffer 20 to output port 50
    Rescheduling event Tail104[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 32>>
Initiating event Head204[0]
    Head of packet 204 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head204[0] to occur in 0.5 time units
Initiating event Head105[0]
    Mux 20 in use, head of packet 105 sleeps
    Rescheduling event Head105[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head105 waits
Initiating event Tail105[0]
    Event Tail105[0] signalling semaphore NetRdy0[0]
    - No processes or events waiting; new semaphore value = 1
    Event Tail105[0] signalling semaphore PortRdy0[0]
    - No processes or events waiting; new semaphore value = 2
    Tail of packet 105 has caught up with its head
Initiating event Tail104[0]
    Packet 104 queued at ouput port 50
    Event Tail104[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail104[0] set to deleting mode
Event Tail104[0] terminating
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 104 received
Receiving packet 104 at time 32
    Life time = 18; Total time in the net = 20
    Time blocked in the net = 10, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 32.5>>
Initiating event Head204[0]
    Head of packet 204 moves from buffer 11 
    Flit Head205 free to enter module 11
    Scheduling activity Head205[0] to occur in 1 time units
    Tail of packet 204 wakes up
    Scheduling activity Tail204[0] to occur in 0.5 time units
    Head of packet 204 moves to buffer 20 
    - Packet 204 status: 11/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head204[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 33>>
Initiating event Tail204[0]
    Tail of packet 204 free to move out of module 11
    Rescheduling event Tail204[0] to occur in 0.5 time units
Initiating event Head204[0]
    Head of packet 204 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head204[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 33.5>>
Initiating event Head205[0]
    Head of packet 205 moves from input port 1
    Tail of packet 205 wakes up
    Scheduling activity Tail205[0] to occur in 0.5 time units
    Head of packet 205 moves to buffer 11 
    - Packet 205 status: 1/1 11/1
    - Head behind other packets in the buffer
Initiating event Tail204[0]
    Tail of packet 204 moves from buffer 11 to buffer 20
    Scheduling activity Head205[0] to occur in 0.5 time units
    - Packet 204 status: 20/2
    Packet 204 signals MUX semaphore 20
    Event Tail204[0] signalling semaphore MuxSema20[0]
    - Activity Head105[0] released; semaphore value unchanged
    Rescheduling event Tail204[0] to occur in 0.5 time units
Initiating event Head204[0]
    Head of packet 204 moves from buffer 20 
    Head of packet 204 moves to output port 50 
    Event Head204[0] set to deleting mode
Event Head204[0] terminating
Initiating event Head105[0]
    Head of packet 105 wakes up from mux 20
    Rescheduling event Head105[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 34>>
Initiating event Tail205[0]
    Tail of packet 205 free to move out of module 1
    Rescheduling event Tail205[0] to occur in 0.5 time units
Initiating event Head205[0]
    Head of packet 205 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head205[0] to occur in 1 time units
Initiating event Tail204[0]
    Tail of packet 204 free to move out of module 20
    Rescheduling event Tail204[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 34.5>>
Initiating event Tail205[0]
    Tail of packet 205 moves from input port 1 to buffer 11
    - Packet 205 status: 11/2
    Rescheduling event Tail205[0] to occur in 0.5 time units
Initiating event Tail204[0]
    Tail of packet 204 moves from buffer 20 to output port 50
    Rescheduling event Tail204[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 35>>
Initiating event Head105[0]
    Head of packet 105 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head105[0] to occur in 0.5 time units
Initiating event Head205[0]
    Mux 20 in use, head of packet 205 sleeps
    Rescheduling event Head205[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head205 waits
Initiating event Tail205[0]
    Event Tail205[0] signalling semaphore NetRdy1[0]
    - No processes or events waiting; new semaphore value = 1
    Event Tail205[0] signalling semaphore PortRdy1[0]
    - No processes or events waiting; new semaphore value = 2
    Tail of packet 205 has caught up with its head
Initiating event Tail204[0]
    Packet 204 queued at ouput port 50
    Event Tail204[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail204[0] set to deleting mode
Event Tail204[0] terminating
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 204 received
Receiving packet 204 at time 35
    Life time = 18; Total time in the net = 20
    Time blocked in the net = 10, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 35.5>>
Initiating event Head105[0]
    Head of packet 105 moves from buffer 10 
    Tail of packet 105 wakes up
    Scheduling activity Tail105[0] to occur in 0.5 time units
    Head of packet 105 moves to buffer 20 
    - Packet 105 status: 10/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 36>>
Initiating event Tail105[0]
    Tail of packet 105 free to move out of module 10
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 36.5>>
Initiating event Tail105[0]
    Tail of packet 105 moves from buffer 10 to buffer 20
    - Packet 105 status: 20/2
    Packet 105 signals MUX semaphore 20
    Event Tail105[0] signalling semaphore MuxSema20[0]
    - Activity Head205[0] released; semaphore value unchanged
    Rescheduling event Tail105[0] to occur in 0.5 time units
Initiating event Head105[0]
    Head of packet 105 moves from buffer 20 
    Head of packet 105 moves to output port 50 
    Event Head105[0] set to deleting mode
Event Head105[0] terminating
Initiating event Head205[0]
    Head of packet 205 wakes up from mux 20
    Rescheduling event Head205[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 37>>
Initiating event Tail105[0]
    Tail of packet 105 free to move out of module 20
    Rescheduling event Tail105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 37.5>>
Initiating event Tail105[0]
    Tail of packet 105 moves from buffer 20 to output port 50
    Rescheduling event Tail105[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 38>>
Initiating event Head205[0]
    Head of packet 205 determining its next module
    - Head's next module is buffer 20
    - That buffer has space, head free to move
    Rescheduling event Head205[0] to occur in 0.5 time units
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
Receiving packet 105 at time 38
    Life time = 18; Total time in the net = 20
    Time blocked in the net = 10, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 38.5>>
Initiating event Head205[0]
    Head of packet 205 moves from buffer 11 
    Tail of packet 205 wakes up
    Scheduling activity Tail205[0] to occur in 0.5 time units
    Head of packet 205 moves to buffer 20 
    - Packet 205 status: 11/1 20/1
    - Head at the front of the buffer
    Rescheduling event Head205[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 39>>
Initiating event Tail205[0]
    Tail of packet 205 free to move out of module 11
    Rescheduling event Tail205[0] to occur in 0.5 time units
Initiating event Head205[0]
    Head of packet 205 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head205[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 39.5>>
Initiating event Tail205[0]
    Tail of packet 205 moves from buffer 11 to buffer 20
    - Packet 205 status: 20/2
    Packet 205 signals MUX semaphore 20
    Event Tail205[0] signalling semaphore MuxSema20[0]
    - No processes or events waiting; new semaphore value = 1
    Rescheduling event Tail205[0] to occur in 0.5 time units
Initiating event Head205[0]
    Head of packet 205 moves from buffer 20 
    Head of packet 205 moves to output port 50 
    Event Head205[0] set to deleting mode
Event Head205[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 40>>
Initiating event Tail205[0]
    Tail of packet 205 free to move out of module 20
    Rescheduling event Tail205[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 40.5>>
Initiating event Tail205[0]
    Tail of packet 205 moves from buffer 20 to output port 50
    Rescheduling event Tail205[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 41>>
Initiating event Tail205[0]
    Packet 205 queued at ouput port 50
    Event Tail205[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv[0] released; semaphore value unchanged
    Event Tail205[0] set to deleting mode
Event Tail205[0] terminating
Transferring to process UserRecv[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 205 received
Receiving packet 205 at time 41
    Life time = 18; Total time in the net = 20
    Time blocked in the net = 10, Time in an output port = 0
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 41

