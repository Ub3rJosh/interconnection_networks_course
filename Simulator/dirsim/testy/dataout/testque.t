
Testing SEMAPHORES

    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating semaphore S1[0] with value 0
    Creating semaphore S2[0] with value 0
    Creating semaphore S3[0] with value 0
    Creating semaphore S4[0] with value 0
    Creating statistics record S1.length[0]
    - Means and histograms computed
    - 6 bins, bin size = 1, low bin < 0, high bin >= 4
    Updating interval statistics record S1.length[0]; value = 0, interval = 0
    Creating statistics record S1.time[0]
    - Means and histograms computed
    - 8 bins, bin size = 1, low bin < 1, high bin >= 7
    Process usermain[0] setting semaphore S1[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] setting semaphore S2[0]
    - No processes or events waiting; new semaphore value = 1
    Creating process proc1[0]
    Creating process proc2[0]
    Creating process proc3[0]
    Scheduling activity proc1[0] to occur in 0 time units
    Scheduling activity proc2[0] to occur in 0 time units
    Scheduling activity proc3[0] to occur in 0 time units
    Process usermain[0] delaying for 1 time units
Transferring to process proc1[0]
    Process proc1[0] continues past semaphore S1[0], new value = 0
    Process proc1[0] waiting at semaphore S1[0], value = 0
    Updating interval statistics record S1.length[0]; value = 1, interval = 0
Transferring to process proc2[0]
    Process proc2[0] waiting at semaphore S1[0], value = 0
    Updating interval statistics record S1.length[0]; value = 2, interval = 0
Transferring to process proc3[0]
    Process proc3[0] waiting at semaphore S1[0], value = 0
    Updating interval statistics record S1.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1>>
Transferring to process usermain[0]
    Process usermain[0] setting semaphore S1[0]
    Updating interval statistics record S1.length[0]; value = 2, interval = 1
    Updating point statistics record S1.time[0]; value = 1, weight = 1
    - Activity proc1[0] released; semaphore value unchanged
    Process usermain[0] delaying for 1 time units
Transferring to process proc1[0]
    Process proc1[0] waiting at semaphore S4[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2>>
Transferring to process usermain[0]

WARNING: Setting a set semaphore

    Process usermain[0] setting semaphore S2[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
Transferring to process usermain[0]
    Process usermain[0] setting semaphore S1[0]
    Updating interval statistics record S1.length[0]; value = 1, interval = 2
    Updating point statistics record S1.time[0]; value = 3, weight = 1
    - Activity proc2[0] released; semaphore value unchanged
    Process usermain[0] delaying for 1 time units
Transferring to process proc2[0]
    Process proc2[0] continues past semaphore S2[0], new value = 0
    Process proc2[0] waiting at semaphore S4[0], value = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4>>
Transferring to process usermain[0]
    Process usermain[0] setting semaphore S3[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5>>
Transferring to process usermain[0]
    Process usermain[0] setting semaphore S4[0]
    - Activity proc1[0] released; semaphore value unchanged
    Process usermain[0] delaying for 1 time units
Transferring to process proc1[0]
    Process proc1[0] waiting at semaphore S1[0], value = 0
    Updating interval statistics record S1.length[0]; value = 2, interval = 2
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6>>
Transferring to process usermain[0]
    Process usermain[0] setting semaphore S2[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] setting semaphore S1[0]
    Updating interval statistics record S1.length[0]; value = 1, interval = 1
    Updating point statistics record S1.time[0]; value = 6, weight = 1
    - Activity proc3[0] released; semaphore value unchanged

WARNING: Setting a set semaphore

    Process usermain[0] setting semaphore S2[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] setting semaphore S1[0]
    Updating interval statistics record S1.length[0]; value = 0, interval = 0
    Updating point statistics record S1.time[0]; value = 1, weight = 1
    - Activity proc1[0] released; semaphore value unchanged

WARNING: Setting a set semaphore

    Process usermain[0] setting semaphore S3[0]
    - No processes or events waiting; new semaphore value = 1

WARNING: Setting a set semaphore

    Process usermain[0] setting semaphore S3[0]
    - No processes or events waiting; new semaphore value = 1

WARNING: Setting a set semaphore

    Process usermain[0] setting semaphore S3[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] delaying for 1 time units
Transferring to process proc3[0]
    Process proc3[0] continues past semaphore S3[0], new value = 0
    Process proc3[0] waiting at semaphore S4[0], value = 0
Transferring to process proc1[0]
    Process proc1[0] delaying for 5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 7>>
Transferring to process usermain[0]
    Process usermain[0] setting semaphore S1[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] setting semaphore S3[0]
    - No processes or events waiting; new semaphore value = 1

WARNING: Setting a set semaphore

    Process usermain[0] setting semaphore S3[0]
    - No processes or events waiting; new semaphore value = 1

WARNING: Setting a set semaphore

    Process usermain[0] setting semaphore S2[0]
    - No processes or events waiting; new semaphore value = 1

WARNING: Setting a set semaphore

    Process usermain[0] setting semaphore S3[0]
    - No processes or events waiting; new semaphore value = 1
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8>>
Transferring to process usermain[0]
    Updating interval statistics record S1.length[0]; value = 0, interval = 2

Statistics Record S1.length:
   Number of intervals = 9, Max Value = 3, Min Value = 0
   Sampling interval = 8,   Sampling rate = 1.25
   Mean = 1.375,   Standard Deviation = 1.06066
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (25.00%) |************
     1.000     2.000 (25.00%) |************
     2.000     3.000 (37.50%) |******************
     3.000     1.000 (12.50%) |******
     4.000     0.000 ( 0.00%) |
End of Report


Statistics Record S1.time:
   Number of samples = 4,   Max Value = 6,   Min Value = 1
   Sampling interval = 6,   Sampling rate = 0.666667
   Mean = 2.75,   Standard Deviation = 2.36291
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     1.000     2.000 (50.00%) |*************************
     2.000     0.000 ( 0.00%) |
     3.000     1.000 (25.00%) |************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (25.00%) |************
     7.000     0.000 ( 0.00%) |
End of Report

Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11>>
Transferring to process proc1[0]
    Process proc1[0] continues past semaphore S1[0], new value = 0
Process proc1[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 11

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>


Testing FLAGS

    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating flag F1[0]
    Creating flag F2[0]
    Creating flag F3[0]
    Creating flag F4[0]
    Creating statistics record F1.length[0]
    - Means and histograms computed
    - 6 bins, bin size = 1, low bin < 0, high bin >= 4
    Updating interval statistics record F1.length[0]; value = 0, interval = 0
    Creating statistics record F1.time[0]
    - Means and histograms computed
    - 8 bins, bin size = 1, low bin < 1, high bin >= 7
    Creating process proc1[0]
    Creating process proc2[0]
    Creating process proc3[0]
    Scheduling activity proc1[0] to occur in 0 time units
    Scheduling activity proc2[0] to occur in 0 time units
    Scheduling activity proc3[0] to occur in 0 time units
    Process usermain[0] delaying for 1 time units
Transferring to process proc1[0]
    Process proc1[0] waiting at flag F1[0]
    - Flag not set, process suspends
    Updating interval statistics record F1.length[0]; value = 1, interval = 0
Transferring to process proc2[0]
    Process proc2[0] waiting at flag F1[0]
    - Flag not set, process suspends
    Updating interval statistics record F1.length[0]; value = 2, interval = 0
Transferring to process proc3[0]
    Process proc3[0] waiting at flag F1[0]
    - Flag not set, process suspends
    Updating interval statistics record F1.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1>>
Transferring to process usermain[0]
    Process usermain[0] setting flag F1[0]
    - 3 activities waiting
    Updating interval statistics record F1.length[0]; value = 2, interval = 1
    Updating point statistics record F1.time[0]; value = 1, weight = 1
    - Activity proc1[0] released from flag F1[0]
    Updating interval statistics record F1.length[0]; value = 1, interval = 0
    Updating point statistics record F1.time[0]; value = 1, weight = 1
    - Activity proc2[0] released from flag F1[0]
    Updating interval statistics record F1.length[0]; value = 0, interval = 0
    Updating point statistics record F1.time[0]; value = 1, weight = 1
    - Activity proc3[0] released from flag F1[0]
    Process usermain[0] delaying for 1 time units
Transferring to process proc1[0]
    Process proc1[0] waiting at flag F1[0]
    - Flag not set, process suspends
    Updating interval statistics record F1.length[0]; value = 1, interval = 0
Transferring to process proc2[0]
    Process proc2[0] waiting at flag F2[0]
    - Flag not set, process suspends
Transferring to process proc3[0]
    Process proc3[0] waiting at flag F3[0]
    - Flag not set, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2>>
Transferring to process usermain[0]
    Process usermain[0] setting flag F2[0]
    - 1 activities waiting
    - Activity proc2[0] released from flag F2[0]
    Process usermain[0] delaying for 1 time units
Transferring to process proc2[0]
    Process proc2[0] waiting at flag F4[0]
    - Flag not set, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
Transferring to process usermain[0]
    Process usermain[0] setting flag F1[0]
    - 1 activities waiting
    Updating interval statistics record F1.length[0]; value = 0, interval = 2
    Updating point statistics record F1.time[0]; value = 2, weight = 1
    - Activity proc1[0] released from flag F1[0]
    Process usermain[0] delaying for 1 time units
Transferring to process proc1[0]
    Process proc1[0] waiting at flag F4[0]
    - Flag not set, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4>>
Transferring to process usermain[0]
    Process usermain[0] setting flag F3[0]
    - 1 activities waiting
    - Activity proc3[0] released from flag F3[0]
    Process usermain[0] delaying for 1 time units
Transferring to process proc3[0]
    Process proc3[0] waiting at flag F4[0]
    - Flag not set, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 5>>
Transferring to process usermain[0]
    Process usermain[0] releasing all activities waiting at flag F4[0]
    - 3 activities waiting
    - Activity proc2[0] released from flag F4[0]
    - Activity proc1[0] released from flag F4[0]
    - Activity proc3[0] released from flag F4[0]
    Process usermain[0] setting flag F2[0]
    - 0 activities waiting
    Process usermain[0] setting flag F1[0]
    - 0 activities waiting
    Process usermain[0] releasing all activities waiting at flag F2[0]
    - 0 activities waiting
    Process usermain[0] delaying for 1 time units
Transferring to process proc2[0]
    Process proc2[0] waiting at flag F2[0]
    - Flag not set, process suspends
Transferring to process proc1[0]
    Process proc1[0] waiting at flag F1[0]
    - Flag is set, process continues
    Process proc1[0] delaying for 5 time units
Transferring to process proc3[0]
    Process proc3[0] waiting at flag F3[0]
    - Flag not set, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 6>>
Transferring to process usermain[0]
    Process usermain[0] releasing all activities waiting at flag F1[0]
    - 0 activities waiting
    Process usermain[0] releasing all activities waiting at flag F2[0]
    - 1 activities waiting
    - Activity proc2[0] released from flag F2[0]
    Process usermain[0] releasing all activities waiting at flag F3[0]
    - 1 activities waiting
    - Activity proc3[0] released from flag F3[0]
    Process usermain[0] setting flag F1[0]
    - 0 activities waiting
    Process usermain[0] setting flag F1[0]
    - 0 activities waiting

WARNING: Setting a set flag

    Process usermain[0] releasing all activities waiting at flag F1[0]
    - 0 activities waiting
    Process usermain[0] releasing all activities waiting at flag F1[0]
    - 0 activities waiting
    Process usermain[0] delaying for 6 time units
Transferring to process proc2[0]
    Process proc2[0] delaying for 5 time units
Transferring to process proc3[0]
    Process proc3[0] delaying for 5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10>>
Transferring to process proc1[0]
    Process proc1[0] waiting at flag F1[0]
    - Flag not set, process suspends
    Updating interval statistics record F1.length[0]; value = 1, interval = 7
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11>>
Transferring to process proc2[0]
    Process proc2[0] waiting at flag F1[0]
    - Flag not set, process suspends
    Updating interval statistics record F1.length[0]; value = 2, interval = 1
Transferring to process proc3[0]
    Process proc3[0] waiting at flag F1[0]
    - Flag not set, process suspends
    Updating interval statistics record F1.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
Transferring to process usermain[0]
    Process usermain[0] setting flag F1[0]
    - 3 activities waiting
    Updating interval statistics record F1.length[0]; value = 2, interval = 1
    Updating point statistics record F1.time[0]; value = 2, weight = 1
    - Activity proc1[0] released from flag F1[0]
    Updating interval statistics record F1.length[0]; value = 1, interval = 0
    Updating point statistics record F1.time[0]; value = 1, weight = 1
    - Activity proc2[0] released from flag F1[0]
    Updating interval statistics record F1.length[0]; value = 0, interval = 0
    Updating point statistics record F1.time[0]; value = 1, weight = 1
    - Activity proc3[0] released from flag F1[0]
    Process usermain[0] setting flag F3[0]
    - 0 activities waiting
    Process usermain[0] setting flag F3[0]
    - 0 activities waiting

WARNING: Setting a set flag

    Process usermain[0] releasing all activities waiting at flag F3[0]
    - 0 activities waiting
    Process usermain[0] releasing all activities waiting at flag F3[0]
    - 0 activities waiting
    Process usermain[0] delaying for 1 time units
Transferring to process proc1[0]
Process proc1[0] terminating
Transferring to process proc2[0]
Process proc2[0] terminating
Transferring to process proc3[0]
Process proc3[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13>>
Transferring to process usermain[0]
    Updating interval statistics record F1.length[0]; value = 0, interval = 1

Statistics Record F1.length:
   Number of intervals = 15, Max Value = 3, Min Value = 0
   Sampling interval = 13,   Sampling rate = 1.23077
   Mean = 0.692308,   Standard Deviation = 1.1094
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     8.000 (61.54%) |******************************
     1.000     3.000 (23.08%) |***********
     2.000     0.000 ( 0.00%) |
     3.000     2.000 (15.38%) |*******
     4.000     0.000 ( 0.00%) |
End of Report


Statistics Record F1.time:
   Number of samples = 7,   Max Value = 2,   Min Value = 1
   Sampling interval = 12,   Sampling rate = 0.583333
   Mean = 1.28571,   Standard Deviation = 0.48795
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     1.000     5.000 (71.43%) |***********************************
     2.000     2.000 (28.57%) |**************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
End of Report

Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 13

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>


Testing CONDITIONS

    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating integer-valued state variable A[0] = 0
    Creating integer-valued state variable B[0] = 0
    Creating condition C1[0]
    Creating condition C2[0]
    Creating condition C3[0]
    Creating condition C4[0]
    Creating statistics record C1.length[0]
    - Means and histograms computed
    - 6 bins, bin size = 1, low bin < 0, high bin >= 4
    Updating interval statistics record C1.length[0]; value = 0, interval = 0
    Creating statistics record C1.time[0]
    - Means and histograms computed
    - 4 bins, bin size = 1, low bin < 0, high bin >= 2
    State Variable A[0] modified; new value = 1
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C1[0]; new state = 0
    State Variable B[0] modified; new value = 2
    Evaluating condition C1[0]; new state = 0
    Process usermain[0] delaying for 0.1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 0.1>>
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C3[0]; new state = 0
    Evaluating condition C2[0]; new state = 0
Transferring to process usermain[0]
    Creating process proc1[0]
    Creating process proc2[0]
    Creating process proc3[0]
    Scheduling activity proc1[0] to occur in 0 time units
    Scheduling activity proc2[0] to occur in 0 time units
    Scheduling activity proc3[0] to occur in 0 time units
    Process usermain[0] delaying for 0.9 time units
Transferring to process proc1[0]
    Process proc1[0] waiting at condition C1[0]
    Condition false, process suspends
    Updating interval statistics record C1.length[0]; value = 1, interval = 0.1
Transferring to process proc2[0]
    Process proc2[0] waiting at condition C1[0]
    Condition false, process suspends
    Updating interval statistics record C1.length[0]; value = 2, interval = 0
Transferring to process proc3[0]
    Process proc3[0] waiting at condition C1[0]
    Condition false, process suspends
    Updating interval statistics record C1.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1>>
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C3[0]; new state = 0
    Evaluating condition C2[0]; new state = 0
Transferring to process usermain[0]
    State Variable A[0] modified; new value = 7
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C1[0]; new state = 0
    State Variable B[0] modified; new value = 7
    Evaluating condition C1[0]; new state = 1
    Updating interval statistics record C1.length[0]; value = 2, interval = 0.9
    Updating point statistics record C1.time[0]; value = 0.9, weight = 1
    - Activity proc1[0] released from condition C1[0]
    Updating interval statistics record C1.length[0]; value = 1, interval = 0
    Updating point statistics record C1.time[0]; value = 0.9, weight = 1
    - Activity proc2[0] released from condition C1[0]
    Updating interval statistics record C1.length[0]; value = 0, interval = 0
    Updating point statistics record C1.time[0]; value = 0.9, weight = 1
    - Activity proc3[0] released from condition C1[0]
    Process usermain[0] delaying for 1 time units
Transferring to process proc1[0]
    Process proc1[0] waiting at condition C1[0]
    Condition true, process continues
    Process proc1[0] delaying for 3 time units
Transferring to process proc2[0]
    Process proc2[0] waiting at condition C4[0]
    Condition false, process suspends
Transferring to process proc3[0]
    Process proc3[0] waiting at condition C3[0]
    Condition false, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2>>
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C3[0]; new state = 0
    Evaluating condition C2[0]; new state = 0
Transferring to process usermain[0]
    State Variable B[0] modified; new value = 0
    Evaluating condition C1[0]; new state = 0
    Process usermain[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C3[0]; new state = 0
    Evaluating condition C2[0]; new state = 0
Transferring to process usermain[0]
    Process usermain[0] delaying for 5 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4>>
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C3[0]; new state = 0
    Evaluating condition C2[0]; new state = 1
Transferring to process proc1[0]
    Process proc1[0] waiting at condition C2[0]
    Condition true, process continues
    Process proc1[0] waiting at condition C3[0]
    Condition false, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8>>
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C3[0]; new state = 0
    Evaluating condition C2[0]; new state = 1
Transferring to process usermain[0]
    Process usermain[0] delaying for 2 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 10>>
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C3[0]; new state = 0
    Evaluating condition C2[0]; new state = 1
Transferring to process usermain[0]
    State Variable A[0] modified; new value = 20
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C1[0]; new state = 0
    Process usermain[0] delaying for 6 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16>>
    Evaluating condition C4[0]; new state = 0
    Evaluating condition C3[0]; new state = 1
    - Activity proc3[0] released from condition C3[0]
    - Activity proc1[0] released from condition C3[0]
    Evaluating condition C2[0]; new state = 1
Transferring to process usermain[0]
    Process usermain[0] delaying for 6 time units
Transferring to process proc3[0]
    Process proc3[0] waiting at condition C2[0]
    Condition true, process continues
Process proc3[0] terminating
Transferring to process proc1[0]
    Process proc1[0] waiting at condition C4[0]
    Condition false, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 22>>
    Evaluating condition C4[0]; new state = 1
    - Activity proc2[0] released from condition C4[0]
    - Activity proc1[0] released from condition C4[0]
    Evaluating condition C3[0]; new state = 1
    Evaluating condition C2[0]; new state = 1
Transferring to process usermain[0]
    Updating interval statistics record C1.length[0]; value = 0, interval = 21

Statistics Record C1.length:
   Number of intervals = 7, Max Value = 3, Min Value = 0
   Sampling interval = 22,   Sampling rate = 0.363636
   Mean = 0.122727,   Standard Deviation = 0.608223
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000    21.100 (95.91%) |***********************************************
     1.000     0.000 ( 0.00%) |
     2.000     0.000 ( 0.00%) |
     3.000     0.900 ( 4.09%) |**
     4.000     0.000 ( 0.00%) |
End of Report


Statistics Record C1.time:
   Number of samples = 3,   Max Value = 0.9,   Min Value = 0.9
   Sampling interval = 1,   Sampling rate = 3
   Mean = 0.9,   Standard Deviation = 0
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (100.00%) |**************************************************
     1.000     0.000 ( 0.00%) |
     2.000     0.000 ( 0.00%) |
End of Report

Process usermain[0] terminating
Transferring to process proc2[0]
Process proc2[0] terminating
Transferring to process proc1[0]
Process proc1[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 22

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>


Testing All Three

    Creating semaphore sem[0] with value 3
    Creating barrier bar[0] with count 7
    Creating flag flg[0]
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating process sub1[0]
    Scheduling activity sub1[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating process sub2[0]
    Scheduling activity sub2[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating process sub3[0]
    Scheduling activity sub3[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating process sub4[0]
    Scheduling activity sub4[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating process sub5[0]
    Scheduling activity sub5[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]
    Creating process sub6[0]
    Scheduling activity sub6[0] to occur in 0 time units
    - Forking schedule, parent process is usermain[0]

Testing the Wait() and Signal() operations for semaphores and Sync() for barriers

    Process usermain[0] synchronizing on barrier bar[0]
    - 1 processes waiting at barrier;  process waits
Transferring to process sub1[0]
    Process sub1[0] continues past semaphore sem[0], new value = 2
    Process sub1[0] delaying for 0 time units
Transferring to process sub2[0]
    Process sub2[0] continues past semaphore sem[0], new value = 1
    Process sub2[0] delaying for 0 time units
Transferring to process sub3[0]
    Process sub3[0] continues past semaphore sem[0], new value = 0
    Process sub3[0] delaying for 0 time units
Transferring to process sub4[0]
    Process sub4[0] waiting at semaphore sem[0], value = 0
Transferring to process sub5[0]
    Process sub5[0] waiting at semaphore sem[0], value = 0
Transferring to process sub6[0]
    Process sub6[0] waiting at semaphore sem[0], value = 0
Transferring to process sub1[0]
    Process sub1[0] delaying for 0 time units
Transferring to process sub2[0]
    Process sub2[0] signalling semaphore sem[0]
    - Activity sub4[0] released; semaphore value unchanged
    Process sub2[0] synchronizing on barrier bar[0]
    - 2 processes waiting at barrier;  process waits
Transferring to process sub3[0]
    Process sub3[0] signalling semaphore sem[0]
    - Activity sub5[0] released; semaphore value unchanged
    Process sub3[0] synchronizing on barrier bar[0]
    - 3 processes waiting at barrier;  process waits
Transferring to process sub1[0]
    Process sub1[0] signalling semaphore sem[0]
    - Activity sub6[0] released; semaphore value unchanged
    Process sub1[0] synchronizing on barrier bar[0]
    - 4 processes waiting at barrier;  process waits
Transferring to process sub4[0]
    Process sub4[0] delaying for 0 time units
Transferring to process sub5[0]
    Process sub5[0] delaying for 0 time units
Transferring to process sub6[0]
    Process sub6[0] delaying for 0 time units
Transferring to process sub4[0]
    Process sub4[0] signalling semaphore sem[0]
    - No processes or events waiting; new semaphore value = 1
    Process sub4[0] synchronizing on barrier bar[0]
    - 5 processes waiting at barrier;  process waits
Transferring to process sub5[0]
    Process sub5[0] signalling semaphore sem[0]
    - No processes or events waiting; new semaphore value = 2
    Process sub5[0] synchronizing on barrier bar[0]
    - 6 processes waiting at barrier;  process waits
Transferring to process sub6[0]
    Process sub6[0] signalling semaphore sem[0]
    - No processes or events waiting; new semaphore value = 3
    Process sub6[0] synchronizing on barrier bar[0]
    - Releasing all waiting processes
    - Releasing process usermain[0]
    - Releasing process sub2[0]
    - Releasing process sub3[0]
    - Releasing process sub1[0]
    - Releasing process sub4[0]
    - Releasing process sub5[0]
Process sub6[0] terminating
Transferring to process usermain[0]
    Initializing Barrier bar[0]; new count = 4
    Process usermain[0] delaying for 1 time units
Transferring to process sub2[0]
    Process sub2[0] delaying for 1 time units
Transferring to process sub3[0]
    Process sub3[0] delaying for 1 time units
Transferring to process sub1[0]
    Process sub1[0] delaying for 1 time units
Transferring to process sub4[0]
    Process sub4[0] delaying for 1 time units
Transferring to process sub5[0]
    Process sub5[0] delaying for 1 time units
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 1>>
Transferring to process usermain[0]

Testing the operation Set() for processes

    Process usermain[0] setting flag flg[0]
    - 0 activities waiting
    Process usermain[0] releasing all activities waiting at flag flg[0]
    - 0 activities waiting
    Process usermain[0] delaying for 1 time units
Transferring to process sub2[0]
    Process sub2[0] waiting at flag flg[0]
    - Flag not set, process suspends
Transferring to process sub3[0]
    Process sub3[0] waiting at flag flg[0]
    - Flag not set, process suspends
Transferring to process sub1[0]
    Process sub1[0] waiting at flag flg[0]
    - Flag not set, process suspends
Transferring to process sub4[0]
    Process sub4[0] waiting at flag flg[0]
    - Flag not set, process suspends
Transferring to process sub5[0]
    Process sub5[0] waiting at flag flg[0]
    - Flag not set, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 2>>
Transferring to process usermain[0]
    Process usermain[0] setting flag flg[0]
    - 5 activities waiting
    - Activity sub2[0] released from flag flg[0]
    - Activity sub3[0] released from flag flg[0]
    - Activity sub1[0] released from flag flg[0]
    - Activity sub4[0] released from flag flg[0]
    - Activity sub5[0] released from flag flg[0]
    Process usermain[0] delaying for 1 time units
Transferring to process sub2[0]
Process sub2[0] terminating
Transferring to process sub3[0]
    Process sub3[0] waiting at flag flg[0]
    - Flag not set, process suspends
Transferring to process sub1[0]
    Process sub1[0] waiting at flag flg[0]
    - Flag not set, process suspends
Transferring to process sub4[0]
Process sub4[0] terminating
Transferring to process sub5[0]
    Process sub5[0] waiting at flag flg[0]
    - Flag not set, process suspends
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 3>>
Transferring to process usermain[0]
    Process usermain[0] releasing all activities waiting at flag flg[0]
    - 3 activities waiting
    - Activity sub3[0] released from flag flg[0]
    - Activity sub1[0] released from flag flg[0]
    - Activity sub5[0] released from flag flg[0]
    Process usermain[0] releasing all activities waiting at flag flg[0]
    - 0 activities waiting
    Process usermain[0] setting flag flg[0]
    - 0 activities waiting
    Process usermain[0] delaying for 1 time units
Transferring to process sub3[0]
    Process sub3[0] waiting at flag flg[0]
    - Flag is set, process continues
Process sub3[0] terminating
Transferring to process sub1[0]
Process sub1[0] terminating
Transferring to process sub5[0]
Process sub5[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 4>>
Transferring to process usermain[0]
    Process usermain[0] executing Join
    - No active child activities exist, current process continues
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 4

