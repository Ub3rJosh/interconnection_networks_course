    Creating real valued state variable SimTime[0] = 0
    Creating input port 10
    Creating semaphore PortRdy10[0] with value 2
    Creating semaphore NetRdy10[0] with value 1
    Creating input port 11
    Creating semaphore PortRdy11[0] with value 2
    Creating semaphore NetRdy11[0] with value 1
    Creating network mux (id = 20, 2 inputs)
    Creating semaphore MuxSema20[0] with value 1
    Creating network demux 30
    Creating network buffer (id = 40, size = 2)
    Creating network buffer (id = 41, size = 2)
    Creating output port 50
    Creating semaphore FreeSpace50[0] with value 2
    Creating semaphore PacketAvail50[0] with value 0
    Creating output port 51
    Creating semaphore FreeSpace51[0] with value 2
    Creating semaphore PacketAvail51[0] with value 0
    Connecting input port 10 to mux 20
    Connecting input port 11 to mux 20
    Connecting mux 20 to demux 30
    Connecting output 0 of demux 30 to buffer 40
    Connecting output 1 of demux 30 to buffer 41
    Connecting buffer 40 to output port 50
    Connecting buffer 41 to output port 51
    Creating process UserSend0[0]
    Setting argument for UserSend0[0]
    Scheduling activity UserSend0[0] to occur in 0 time units
    Creating process UserSend1[0]
    Setting argument for UserSend1[0]
    Scheduling activity UserSend1[0] to occur in 0 time units
    Creating process UserRecv0[0]
    Setting argument for UserRecv0[0]
    Scheduling activity UserRecv0[0] to occur in 0 time units
    Creating process UserRecv1[0]
    Setting argument for UserRecv1[0]
    Scheduling activity UserRecv1[0] to occur in 0 time units
    Creating statistics record NetTimeStats[0]
    - Means computed; no histograms computed
    Creating statistics record BlkTimeStats[0]
    - Means computed; no histograms computed
    Creating statistics record OPortTimeStats[0]
    - Means computed; no histograms computed
    Creating statistics record MoveTimeStats[0]
    - Means computed; no histograms computed
    Creating statistics record MoveTimeStats[0]
    - Means computed; no histograms computed
User activating Simulation Driver
Transferring to process UserSend0[0]
    Creating packet 200 of size 2
    Attempting to send packet 200 through network port 10
    - Source module = 0, Destination module = 0
    Creating event Head200[0]
    Setting argument for Head200[0]
    Creating event Tail200[0]
    Setting argument for Tail200[0]
    Scheduling activity Head200[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend0[0] delaying for 2 time units
Transferring to process UserSend1[0]
    Creating packet 100 of size 2
    Attempting to send packet 100 through network port 11
    - Source module = 1, Destination module = 0
    Creating event Head100[0]
    Setting argument for Head100[0]
    Creating event Tail100[0]
    Setting argument for Tail100[0]
    Scheduling activity Head100[0] to occur in 2 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2 time units
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv0[0] waiting at semaphore PacketAvail50[0], value = 0
Transferring to process UserRecv1[0]
    Checking for packet at port 51
    - No packets waiting
    Process UserRecv1[0] waiting at semaphore PacketAvail51[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2>>
Initiating event Head200[0]
    Head of packet 200 at front of input port queue 10
    Head of packet 200 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head200[0] to occur in 1 time units
Transferring to process UserSend0[0]
Packet 200 delivered to net at time 2
    Process UserSend0[0] delaying for 1.25 time units
Initiating event Head100[0]
    Head of packet 100 at front of input port queue 11
    Head of packet 100 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head100[0] to occur in 1 time units
Transferring to process UserSend1[0]
Packet 100 delivered to net at time 2
    Process UserSend1[0] delaying for 1.25 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
Initiating event Head200[0]
    Mux 20 free, head of packet 200 delays mux transfer time 1
    Rescheduling event Head200[0] to occur in 1 time units
Initiating event Head100[0]
    Mux 20 in use, head of packet 100 sleeps
    Rescheduling event Head100[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head100 waits
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3.25>>
Transferring to process UserSend0[0]
    Creating packet 201 of size 2
    Attempting to send packet 201 through network port 10
    - Source module = 0, Destination module = 1
    Creating event Head201[0]
    Setting argument for Head201[0]
    Creating event Tail201[0]
    Setting argument for Tail201[0]
    Scheduling activity Head201[0] to occur in 2.75 time units
    - Port ready, packet queued in port
    Process UserSend0[0] delaying for 2.75 time units
Transferring to process UserSend1[0]
    Creating packet 101 of size 2
    Attempting to send packet 101 through network port 11
    - Source module = 1, Destination module = 1
    Creating event Head101[0]
    Setting argument for Head101[0]
    Creating event Tail101[0]
    Setting argument for Tail101[0]
    Scheduling activity Head101[0] to occur in 2.75 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4>>
Initiating event Head200[0]
    Head of packet 200 determining its next module
    - Head's next module is demux 30 routing requires time 1
    Rescheduling event Head200[0] to occur in 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5>>
Initiating event Head200[0]
    Head of packet 200 determining its next module
    Head of packet 200 will leave thru terminal 0 of demux 30
    - Head's next module is buffer 40
    - That buffer has space, head free to move
    Rescheduling event Head200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5.5>>
Initiating event Head200[0]
    Head of packet 200 moves from input port 10
    Tail of packet 200 wakes up
    Scheduling activity Tail200[0] to occur in 0.5 time units
    Head of packet 200 moves to buffer 40 
    - Packet 200 status: 10/1 40/1
    - Head at the front of the buffer
    Rescheduling event Head200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6>>
Initiating event Head201[0]
    Rescheduling event Head201[0] to wait for semaphore NetRdy10[0]
    - Semaphore NetRdy10[0] = 0; Head201 waits
Transferring to process UserSend0[0]
Packet 201 delivered to net at time 6
    Process UserSend0[0] delaying for 1.25 time units
Initiating event Head101[0]
    Rescheduling event Head101[0] to wait for semaphore NetRdy11[0]
    - Semaphore NetRdy11[0] = 0; Head101 waits
Transferring to process UserSend1[0]
Packet 101 delivered to net at time 6
    Process UserSend1[0] delaying for 1.25 time units
Initiating event Tail200[0]
    Tail of packet 200 free to move out of module 10
    Rescheduling event Tail200[0] to occur in 0.5 time units
Initiating event Head200[0]
    Head of packet 200 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6.5>>
Initiating event Tail200[0]
    Tail of packet 200 moves from input port 10 to buffer 40
    - Packet 200 status: 40/2
    Packet 200 signals MUX semaphore 20
    Event Tail200[0] signalling semaphore MuxSema20[0]
    - Activity Head100[0] released; semaphore value unchanged
    Rescheduling event Tail200[0] to occur in 0.5 time units
Initiating event Head200[0]
    Head of packet 200 moves from buffer 40 
    Head of packet 200 moves to output port 50 
    Event Head200[0] set to deleting mode
Event Head200[0] terminating
Initiating event Head100[0]
    Head of packet 100 wakes up from mux 20
    Rescheduling event Head100[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7>>
Initiating event Tail200[0]
    Event Tail200[0] signalling semaphore NetRdy10[0]
    - Activity Head201[0] released; semaphore value unchanged
    Event Tail200[0] signalling semaphore PortRdy10[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 200 free to move out of module 40
    Rescheduling event Tail200[0] to occur in 0.5 time units
Initiating event Head201[0]
    Head of packet 201 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head201[0] to occur in 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.25>>
Transferring to process UserSend0[0]
    Creating packet 202 of size 2
    Attempting to send packet 202 through network port 10
    - Source module = 0, Destination module = 0
    Creating event Head202[0]
    Setting argument for Head202[0]
    Creating event Tail202[0]
    Setting argument for Tail202[0]
    Scheduling activity Head202[0] to occur in 2.75 time units
    - Port ready, packet queued in port
    Process UserSend0[0] delaying for 2.75 time units
Transferring to process UserSend1[0]
    Creating packet 102 of size 2
    Attempting to send packet 102 through network port 11
    - Source module = 1, Destination module = 0
    - Port full, send fails
    Process UserSend1[0] waiting at semaphore PortRdy11[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7.5>>
Initiating event Tail200[0]
    Tail of packet 200 moves from buffer 40 to output port 50
    Rescheduling event Tail200[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8>>
Initiating event Head100[0]
    Head of packet 100 determining its next module
    - Head's next module is demux 30 routing requires time 1
    Rescheduling event Head100[0] to occur in 1 time units
Initiating event Head201[0]
    Mux 20 in use, head of packet 201 sleeps
    Rescheduling event Head201[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head201 waits
Initiating event Tail200[0]
    Packet 200 queued at ouput port 50
    Event Tail200[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv0[0] released; semaphore value unchanged
    Event Tail200[0] set to deleting mode
Event Tail200[0] terminating
Transferring to process UserRecv0[0]
    Process UserRecv0[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9>>
Initiating event Head100[0]
    Head of packet 100 determining its next module
    Head of packet 100 will leave thru terminal 0 of demux 30
    - Head's next module is buffer 40
    - That buffer has space, head free to move
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.5>>
Initiating event Head100[0]
    Head of packet 100 moves from input port 11
    Tail of packet 100 wakes up
    Scheduling activity Tail100[0] to occur in 0.5 time units
    Head of packet 100 moves to buffer 40 
    - Packet 100 status: 11/1 40/1
    - Head at the front of the buffer
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9.75>>
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 200 received
Receiving packet 200 at time 9.75
    Life time = 9.75; Total time in the net = 12
    Time blocked in the net = 0, Time in an output port = 2
    Updating point statistics record NetTimeStats[0]; value = 12, weight = 1
    Updating point statistics record BlkTimeStats[0]; value = 0, weight = 1
    Updating point statistics record OPortTimeStats[0]; value = 2, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 10, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 9.75, weight = 1
    Process UserRecv0[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10>>
Initiating event Head202[0]
    Rescheduling event Head202[0] to wait for semaphore NetRdy10[0]
    - Semaphore NetRdy10[0] = 0; Head202 waits
Transferring to process UserSend0[0]
Packet 202 delivered to net at time 10
    Process UserSend0[0] delaying for 1.25 time units
Initiating event Tail100[0]
    Tail of packet 100 free to move out of module 11
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10.5>>
Initiating event Tail100[0]
    Tail of packet 100 moves from input port 11 to buffer 40
    - Packet 100 status: 40/2
    Packet 100 signals MUX semaphore 20
    Event Tail100[0] signalling semaphore MuxSema20[0]
    - Activity Head201[0] released; semaphore value unchanged
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head100[0]
    Head of packet 100 moves from buffer 40 
    Head of packet 100 moves to output port 50 
    Event Head100[0] set to deleting mode
Event Head100[0] terminating
Initiating event Head201[0]
    Head of packet 201 wakes up from mux 20
    Rescheduling event Head201[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11>>
Initiating event Tail100[0]
    Event Tail100[0] signalling semaphore NetRdy11[0]
    - Activity Head101[0] released; semaphore value unchanged
    Event Tail100[0] signalling semaphore PortRdy11[0]
    - Activity UserSend1[0] released; semaphore value unchanged
    Tail of packet 100 free to move out of module 40
    Rescheduling event Tail100[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head101[0] to occur in 1 time units
Transferring to process UserSend1[0]
    Process UserSend1[0] delaying for 1.25 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11.25>>
Transferring to process UserSend0[0]
    Creating packet 203 of size 2
    Attempting to send packet 203 through network port 10
    - Source module = 0, Destination module = 1
    - Port full, send fails
    Process UserSend0[0] waiting at semaphore PortRdy10[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11.5>>
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv0[0] waiting at semaphore PacketAvail50[0], value = 0
Initiating event Tail100[0]
    Tail of packet 100 moves from buffer 40 to output port 50
    Rescheduling event Tail100[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
Initiating event Head201[0]
    Head of packet 201 determining its next module
    - Head's next module is demux 30 routing requires time 1
    Rescheduling event Head201[0] to occur in 1 time units
Initiating event Head101[0]
    Mux 20 in use, head of packet 101 sleeps
    Rescheduling event Head101[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head101 waits
Initiating event Tail100[0]
    Packet 100 queued at ouput port 50
    Event Tail100[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv0[0] released; semaphore value unchanged
    Event Tail100[0] set to deleting mode
Event Tail100[0] terminating
Transferring to process UserRecv0[0]
    Process UserRecv0[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12.25>>
Transferring to process UserSend1[0]
    Creating packet 102 of size 2
    Attempting to send packet 102 through network port 11
    - Source module = 1, Destination module = 0
    Creating event Head102[0]
    Setting argument for Head102[0]
    Creating event Tail102[0]
    Setting argument for Tail102[0]
    Scheduling activity Head102[0] to occur in 2.75 time units
    - Port ready, packet queued in port
    Process UserSend1[0] delaying for 2.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13>>
Initiating event Head201[0]
    Head of packet 201 determining its next module
    Head of packet 201 will leave thru terminal 1 of demux 30
    - Head's next module is buffer 41
    - That buffer has space, head free to move
    Rescheduling event Head201[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13.5>>
Initiating event Head201[0]
    Head of packet 201 moves from input port 10
    Tail of packet 201 wakes up
    Scheduling activity Tail201[0] to occur in 0.5 time units
    Head of packet 201 moves to buffer 41 
    - Packet 201 status: 10/1 41/1
    - Head at the front of the buffer
    Rescheduling event Head201[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13.75>>
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 100 received
Receiving packet 100 at time 13.75
    Life time = 13.75; Total time in the net = 16
    Time blocked in the net = 4, Time in an output port = 2
    Updating point statistics record NetTimeStats[0]; value = 16, weight = 1
    Updating point statistics record BlkTimeStats[0]; value = 4, weight = 1
    Updating point statistics record OPortTimeStats[0]; value = 2, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 10, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 13.75, weight = 1
    Process UserRecv0[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14>>
Initiating event Tail201[0]
    Tail of packet 201 free to move out of module 10
    Rescheduling event Tail201[0] to occur in 0.5 time units
Initiating event Head201[0]
    Head of packet 201 determining its next module
    - Head's next module is output port 51
    - Port queue has space, head delays for move time
    Rescheduling event Head201[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14.5>>
Initiating event Tail201[0]
    Tail of packet 201 moves from input port 10 to buffer 41
    - Packet 201 status: 41/2
    Packet 201 signals MUX semaphore 20
    Event Tail201[0] signalling semaphore MuxSema20[0]
    - Activity Head101[0] released; semaphore value unchanged
    Rescheduling event Tail201[0] to occur in 0.5 time units
Initiating event Head201[0]
    Head of packet 201 moves from buffer 41 
    Head of packet 201 moves to output port 51 
    Event Head201[0] set to deleting mode
Event Head201[0] terminating
Initiating event Head101[0]
    Head of packet 101 wakes up from mux 20
    Rescheduling event Head101[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 15>>
Initiating event Head102[0]
    Rescheduling event Head102[0] to wait for semaphore NetRdy11[0]
    - Semaphore NetRdy11[0] = 0; Head102 waits
Transferring to process UserSend1[0]
Packet 102 delivered to net at time 15
    Process UserSend1[0] delaying for 1.25 time units
Initiating event Tail201[0]
    Event Tail201[0] signalling semaphore NetRdy10[0]
    - Activity Head202[0] released; semaphore value unchanged
    Event Tail201[0] signalling semaphore PortRdy10[0]
    - Activity UserSend0[0] released; semaphore value unchanged
    Tail of packet 201 free to move out of module 41
    Rescheduling event Tail201[0] to occur in 0.5 time units
Initiating event Head202[0]
    Head of packet 202 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head202[0] to occur in 1 time units
Transferring to process UserSend0[0]
    Process UserSend0[0] delaying for 1.25 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 15.5>>
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv0[0] waiting at semaphore PacketAvail50[0], value = 0
Initiating event Tail201[0]
    Tail of packet 201 moves from buffer 41 to output port 51
    Rescheduling event Tail201[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16>>
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is demux 30 routing requires time 1
    Rescheduling event Head101[0] to occur in 1 time units
Initiating event Head202[0]
    Mux 20 in use, head of packet 202 sleeps
    Rescheduling event Head202[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head202 waits
Initiating event Tail201[0]
    Packet 201 queued at ouput port 51
    Event Tail201[0] signalling semaphore PacketAvail51[0]
    - Activity UserRecv1[0] released; semaphore value unchanged
    Event Tail201[0] set to deleting mode
Event Tail201[0] terminating
Transferring to process UserRecv1[0]
    Process UserRecv1[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16.25>>
Transferring to process UserSend1[0]
Process UserSend1[0] terminating
Transferring to process UserSend0[0]
Process UserSend0[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17>>
Initiating event Head101[0]
    Head of packet 101 determining its next module
    Head of packet 101 will leave thru terminal 1 of demux 30
    - Head's next module is buffer 41
    - That buffer has space, head free to move
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17.5>>
Initiating event Head101[0]
    Head of packet 101 moves from input port 11
    Tail of packet 101 wakes up
    Scheduling activity Tail101[0] to occur in 0.5 time units
    Head of packet 101 moves to buffer 41 
    - Packet 101 status: 11/1 41/1
    - Head at the front of the buffer
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 17.75>>
Transferring to process UserRecv1[0]
    Checking for packet at port 51
    - Packet waiting
    Attempting to receive a packet from port 51
    - Packet 201 received
Receiving packet 201 at time 17.75
    Life time = 14.5; Total time in the net = 16
    Time blocked in the net = 4, Time in an output port = 2
    Updating point statistics record NetTimeStats[0]; value = 16, weight = 1
    Updating point statistics record BlkTimeStats[0]; value = 4, weight = 1
    Updating point statistics record OPortTimeStats[0]; value = 2, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 10, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 14.5, weight = 1
    Process UserRecv1[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 18>>
Initiating event Tail101[0]
    Tail of packet 101 free to move out of module 11
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 determining its next module
    - Head's next module is output port 51
    - Port queue has space, head delays for move time
    Rescheduling event Head101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 18.5>>
Initiating event Tail101[0]
    Tail of packet 101 moves from input port 11 to buffer 41
    - Packet 101 status: 41/2
    Packet 101 signals MUX semaphore 20
    Event Tail101[0] signalling semaphore MuxSema20[0]
    - Activity Head202[0] released; semaphore value unchanged
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head101[0]
    Head of packet 101 moves from buffer 41 
    Head of packet 101 moves to output port 51 
    Event Head101[0] set to deleting mode
Event Head101[0] terminating
Initiating event Head202[0]
    Head of packet 202 wakes up from mux 20
    Rescheduling event Head202[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 19>>
Initiating event Tail101[0]
    Event Tail101[0] signalling semaphore NetRdy11[0]
    - Activity Head102[0] released; semaphore value unchanged
    Event Tail101[0] signalling semaphore PortRdy11[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 101 free to move out of module 41
    Rescheduling event Tail101[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is mux 20
    - Head arbitrates at mux for time 1
    Rescheduling event Head102[0] to occur in 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 19.5>>
Transferring to process UserRecv1[0]
    Checking for packet at port 51
    - No packets waiting
    Process UserRecv1[0] waiting at semaphore PacketAvail51[0], value = 0
Initiating event Tail101[0]
    Tail of packet 101 moves from buffer 41 to output port 51
    Rescheduling event Tail101[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 20>>
Initiating event Head202[0]
    Head of packet 202 determining its next module
    - Head's next module is demux 30 routing requires time 1
    Rescheduling event Head202[0] to occur in 1 time units
Initiating event Head102[0]
    Mux 20 in use, head of packet 102 sleeps
    Rescheduling event Head102[0] to wait for semaphore MuxSema20[0]
    - Semaphore MuxSema20[0] = 0; Head102 waits
Initiating event Tail101[0]
    Packet 101 queued at ouput port 51
    Event Tail101[0] signalling semaphore PacketAvail51[0]
    - Activity UserRecv1[0] released; semaphore value unchanged
    Event Tail101[0] set to deleting mode
Event Tail101[0] terminating
Transferring to process UserRecv1[0]
    Process UserRecv1[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 21>>
Initiating event Head202[0]
    Head of packet 202 determining its next module
    Head of packet 202 will leave thru terminal 0 of demux 30
    - Head's next module is buffer 40
    - That buffer has space, head free to move
    Rescheduling event Head202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 21.5>>
Initiating event Head202[0]
    Head of packet 202 moves from input port 10
    Tail of packet 202 wakes up
    Scheduling activity Tail202[0] to occur in 0.5 time units
    Head of packet 202 moves to buffer 40 
    - Packet 202 status: 10/1 40/1
    - Head at the front of the buffer
    Rescheduling event Head202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 21.75>>
Transferring to process UserRecv1[0]
    Checking for packet at port 51
    - Packet waiting
    Attempting to receive a packet from port 51
    - Packet 101 received
Receiving packet 101 at time 21.75
    Life time = 18.5; Total time in the net = 20
    Time blocked in the net = 8, Time in an output port = 2
    Updating point statistics record NetTimeStats[0]; value = 20, weight = 1
    Updating point statistics record BlkTimeStats[0]; value = 8, weight = 1
    Updating point statistics record OPortTimeStats[0]; value = 2, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 10, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 18.5, weight = 1
    Process UserRecv1[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 22>>
Initiating event Tail202[0]
    Tail of packet 202 free to move out of module 10
    Rescheduling event Tail202[0] to occur in 0.5 time units
Initiating event Head202[0]
    Head of packet 202 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 22.5>>
Initiating event Tail202[0]
    Tail of packet 202 moves from input port 10 to buffer 40
    - Packet 202 status: 40/2
    Packet 202 signals MUX semaphore 20
    Event Tail202[0] signalling semaphore MuxSema20[0]
    - Activity Head102[0] released; semaphore value unchanged
    Rescheduling event Tail202[0] to occur in 0.5 time units
Initiating event Head202[0]
    Head of packet 202 moves from buffer 40 
    Head of packet 202 moves to output port 50 
    Event Head202[0] set to deleting mode
Event Head202[0] terminating
Initiating event Head102[0]
    Head of packet 102 wakes up from mux 20
    Rescheduling event Head102[0] to occur in 1.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 23>>
Initiating event Tail202[0]
    Event Tail202[0] signalling semaphore NetRdy10[0]
    - No processes or events waiting; new semaphore value = 1
    Event Tail202[0] signalling semaphore PortRdy10[0]
    - No processes or events waiting; new semaphore value = 1
    Tail of packet 202 free to move out of module 40
    Rescheduling event Tail202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 23.5>>
Transferring to process UserRecv1[0]
    Checking for packet at port 51
    - No packets waiting
    Process UserRecv1[0] waiting at semaphore PacketAvail51[0], value = 0
Initiating event Tail202[0]
    Tail of packet 202 moves from buffer 40 to output port 50
    Rescheduling event Tail202[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 24>>
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is demux 30 routing requires time 1
    Rescheduling event Head102[0] to occur in 1 time units
Initiating event Tail202[0]
    Packet 202 queued at ouput port 50
    Event Tail202[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv0[0] released; semaphore value unchanged
    Event Tail202[0] set to deleting mode
Event Tail202[0] terminating
Transferring to process UserRecv0[0]
    Process UserRecv0[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 25>>
Initiating event Head102[0]
    Head of packet 102 determining its next module
    Head of packet 102 will leave thru terminal 0 of demux 30
    - Head's next module is buffer 40
    - That buffer has space, head free to move
    Rescheduling event Head102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 25.5>>
Initiating event Head102[0]
    Head of packet 102 moves from input port 11
    Tail of packet 102 wakes up
    Scheduling activity Tail102[0] to occur in 0.5 time units
    Head of packet 102 moves to buffer 40 
    - Packet 102 status: 11/1 40/1
    - Head at the front of the buffer
    Rescheduling event Head102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 25.75>>
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 202 received
Receiving packet 202 at time 25.75
    Life time = 18.5; Total time in the net = 20
    Time blocked in the net = 8, Time in an output port = 2
    Updating point statistics record NetTimeStats[0]; value = 20, weight = 1
    Updating point statistics record BlkTimeStats[0]; value = 8, weight = 1
    Updating point statistics record OPortTimeStats[0]; value = 2, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 10, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 18.5, weight = 1
    Process UserRecv0[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 26>>
Initiating event Tail102[0]
    Tail of packet 102 free to move out of module 11
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 determining its next module
    - Head's next module is output port 50
    - Port queue has space, head delays for move time
    Rescheduling event Head102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 26.5>>
Initiating event Tail102[0]
    Tail of packet 102 moves from input port 11 to buffer 40
    - Packet 102 status: 40/2
    Packet 102 signals MUX semaphore 20
    Event Tail102[0] signalling semaphore MuxSema20[0]
    - No processes or events waiting; new semaphore value = 1
    Rescheduling event Tail102[0] to occur in 0.5 time units
Initiating event Head102[0]
    Head of packet 102 moves from buffer 40 
    Head of packet 102 moves to output port 50 
    Event Head102[0] set to deleting mode
Event Head102[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 27>>
Initiating event Tail102[0]
    Event Tail102[0] signalling semaphore NetRdy11[0]
    - No processes or events waiting; new semaphore value = 1
    Event Tail102[0] signalling semaphore PortRdy11[0]
    - No processes or events waiting; new semaphore value = 2
    Tail of packet 102 free to move out of module 40
    Rescheduling event Tail102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 27.5>>
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv0[0] waiting at semaphore PacketAvail50[0], value = 0
Initiating event Tail102[0]
    Tail of packet 102 moves from buffer 40 to output port 50
    Rescheduling event Tail102[0] to occur in 0.5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 28>>
Initiating event Tail102[0]
    Packet 102 queued at ouput port 50
    Event Tail102[0] signalling semaphore PacketAvail50[0]
    - Activity UserRecv0[0] released; semaphore value unchanged
    Event Tail102[0] set to deleting mode
Event Tail102[0] terminating
Transferring to process UserRecv0[0]
    Process UserRecv0[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 29.75>>
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - Packet waiting
    Attempting to receive a packet from port 50
    - Packet 102 received
Receiving packet 102 at time 29.75
    Life time = 17.5; Total time in the net = 19
    Time blocked in the net = 7, Time in an output port = 2
    Updating point statistics record NetTimeStats[0]; value = 19, weight = 1
    Updating point statistics record BlkTimeStats[0]; value = 7, weight = 1
    Updating point statistics record OPortTimeStats[0]; value = 2, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 10, weight = 1
    Updating point statistics record MoveTimeStats[0]; value = 17.5, weight = 1
    Process UserRecv0[0] delaying for 1.75 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 31.5>>
Transferring to process UserRecv0[0]
    Checking for packet at port 50
    - No packets waiting
    Process UserRecv0[0] waiting at semaphore PacketAvail50[0], value = 0
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 31.5


NETWORK STATISTICS REPORT:

    Network throughput = 0.201681
    Average packet latency = 17.1667
    Ideal latencey (no conflicts) = 10
    Normalized latency = 0.582524
    Average time packets blocked in the network = 5.16667
    Average time packets wait to be received = 2
    Average packet lifetime = 15.4167

