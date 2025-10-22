
Testing FCFS queues

    Creating resource simqs[0] with FCFS queueing discipline
    Creating resource simqt[0] with FCFS queueing discipline
    Creating resource simqu[0] with FCFS queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource notified
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 0, interval = 1
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 1, interval = 1
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 4, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 0, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 2, interval = 2
    Updating point statistics record simqt.time[0]; value = 4, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 1, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 2, interval = 2
    Updating point statistics record simqt.time[0]; value = 6, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 0, interval = 2
    Updating point statistics record simqu.time[0]; value = 5, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 9>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 1, interval = 2
    Updating point statistics record simqt.time[0]; value = 7, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 2
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 10>>
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 11>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 3
    Updating interval statistics record simqt.length[0]; value = 0, interval = 3
    Updating point statistics record simqt.time[0]; value = 7, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 13>>
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 4, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 13

    Updating interval statistics record simqs.length[0]; value = 0, interval = 0

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 2, Min Value = 0
   Sampling interval = 13,   Sampling rate = 1.07692
   Mean = 1.15385,   Standard Deviation = 0.375534
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000    11.000 (84.62%) |******************************************
     2.000     2.000 (15.38%) |*******
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 1

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 4, Min Value = 0
   Sampling interval = 13,   Sampling rate = 1.07692
   Mean = 2.07692,   Standard Deviation = 1.18754
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     1.000 ( 7.69%) |***
     1.000     4.000 (30.77%) |***************
     2.000     2.000 (15.38%) |*******
     3.000     5.000 (38.46%) |*******************
     4.000     1.000 ( 7.69%) |***
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 2

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 13,   Sampling rate = 1.07692
   Mean = 1.30769,   Standard Deviation = 0.85485
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (15.38%) |*******
     1.000     6.000 (46.15%) |***********************
     2.000     4.000 (30.77%) |***************
     3.000     1.000 ( 7.69%) |***
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 4,   Min Value = 1
   Sampling interval = 13,   Sampling rate = 0.461538
   Mean = 2.5,   Standard Deviation = 1.04881
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     2.000 (33.33%) |****************
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 7,   Min Value = 1
   Sampling interval = 12,   Sampling rate = 0.5
   Mean = 4.5,   Standard Deviation = 2.58844
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     0.000 ( 0.00%) |
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     2.000 (33.33%) |****************
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 5,   Min Value = 1
   Sampling interval = 11,   Sampling rate = 0.545455
   Mean = 2.83333,   Standard Deviation = 1.32916
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     3.000 (50.00%) |*************************
     4.000     0.000 ( 0.00%) |
     5.000     1.000 (16.67%) |********
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 0

Statistics Record simqs.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 13,   Sampling rate = 1.07692
   Mean = 1,   Standard Deviation = 0
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000    13.000 (100.00%) |**************************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 1

Statistics Record simqt.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 13,   Sampling rate = 1.07692
   Mean = 0.923077,   Standard Deviation = 0.27735
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     1.000 ( 7.69%) |***
     1.000    12.000 (92.31%) |**********************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 2

Statistics Record simqu.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 13,   Sampling rate = 1.07692
   Mean = 0.846154,   Standard Deviation = 0.375534
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (15.38%) |*******
     1.000    11.000 (84.62%) |******************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Testing FCFSPRWP queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with FCFSPRWP queueing discipline
    Creating resource simqt[0] with FCFSPRWP queueing discipline
    Creating resource simqu[0] with FCFSPRWP queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource notified
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 0, interval = 1
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 1, interval = 2
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 4, interval = 2
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 4, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 0, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 4, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 3, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 7, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 2
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Preempting activity sub3[0] with 1 units of service still required
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 1, interval = 1
    Updating point statistics record simqu.time[0]; value = 8, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 9>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 2
--------------------------------------------------------<<Simulation Time: 10>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 1, interval = 1
    Updating point statistics record simqt.time[0]; value = 5, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 11>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 8, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 4, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 15>>
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 15

    Updating interval statistics record simqs.length[0]; value = 0, interval = 0

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 2, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 0.933333,   Standard Deviation = 0.457738
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (13.33%) |******
     1.000    12.000 (80.00%) |****************************************
     2.000     1.000 ( 6.67%) |***
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 3

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 1.2,   Standard Deviation = 0.861892
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (20.00%) |**********
     1.000     7.000 (46.67%) |***********************
     2.000     4.000 (26.67%) |*************
     3.000     1.000 ( 6.67%) |***
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 4

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 4, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 1.93333,   Standard Deviation = 1.57963
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (26.67%) |*************
     1.000     3.000 (20.00%) |**********
     2.000     1.000 ( 6.67%) |***
     3.000     4.000 (26.67%) |*************
     4.000     3.000 (20.00%) |**********
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 3,   Min Value = 1
   Sampling interval = 15,   Sampling rate = 0.4
   Mean = 2.33333,   Standard Deviation = 0.816497
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     3.000 (50.00%) |*************************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 5,   Min Value = 1
   Sampling interval = 12,   Sampling rate = 0.5
   Mean = 3,   Standard Deviation = 1.54919
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     0.000 ( 0.00%) |
     4.000     2.000 (33.33%) |****************
     5.000     1.000 (16.67%) |********
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 8,   Min Value = 1
   Sampling interval = 11,   Sampling rate = 0.545455
   Mean = 4.83333,   Standard Deviation = 3.18852
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     1.000 (16.67%) |********
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     1.000 (16.67%) |********
     8.000     2.000 (33.33%) |****************
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 0

Statistics Record simqs.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 0.866667,   Standard Deviation = 0.351866
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (13.33%) |******
     1.000    13.000 (86.67%) |*******************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 3

Statistics Record simqt.util:
   Number of intervals = 15, Max Value = 1, Min Value = 0
   Sampling interval = 15,   Sampling rate = 1.06667
   Mean = 0.8,   Standard Deviation = 0.414039
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (20.00%) |**********
     1.000    12.000 (80.00%) |****************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 4

Statistics Record simqu.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 0.733333,   Standard Deviation = 0.457738
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (26.67%) |*************
     1.000    11.000 (73.33%) |************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Testing LCFS queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with LCFS queueing discipline
    Creating resource simqt[0] with LCFS queueing discipline
    Creating resource simqu[0] with LCFS queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 2, interval = 2
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 3
    Updating interval statistics record simqt.length[0]; value = 0, interval = 3
    Updating point statistics record simqt.time[0]; value = 3, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 2, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 0, interval = 1
    Updating point statistics record simqs.time[0]; value = 7, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource notified
    Updating interval statistics record simqt.length[0]; value = 1, interval = 1
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 1, interval = 1
    Updating point statistics record simqu.time[0]; value = 7, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 1
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 1
    Updating point statistics record simqu.time[0]; value = 8, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 2
--------------------------------------------------------<<Simulation Time: 11>>
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 1, interval = 2
    Updating point statistics record simqt.time[0]; value = 3, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 2
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 13>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 6, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 1, interval = 5
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 5
--------------------------------------------------------<<Simulation Time: 15>>
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 4, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 16

    Updating interval statistics record simqs.length[0]; value = 0, interval = 1

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 2, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.25,   Standard Deviation = 0.774597
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (18.75%) |*********
     1.000     6.000 (37.50%) |******************
     2.000     7.000 (43.75%) |*********************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 3

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.0625,   Standard Deviation = 0.853913
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (25.00%) |************
     1.000     8.000 (50.00%) |*************************
     2.000     3.000 (18.75%) |*********
     3.000     1.000 ( 6.25%) |***
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 0

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.5,   Standard Deviation = 1.31656
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.000 (31.25%) |***************
     1.000     4.000 (25.00%) |************
     2.000     1.000 ( 6.25%) |***
     3.000     6.000 (37.50%) |******************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 7,   Min Value = 1
   Sampling interval = 15,   Sampling rate = 0.4
   Mean = 3.33333,   Standard Deviation = 2.06559
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     2.000 (33.33%) |****************
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     1.000 (16.67%) |********
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 6,   Min Value = 1
   Sampling interval = 13,   Sampling rate = 0.461538
   Mean = 2.83333,   Standard Deviation = 1.7224
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 8,   Min Value = 1
   Sampling interval = 16,   Sampling rate = 0.375
   Mean = 4,   Standard Deviation = 2.82843
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     1.000 (16.67%) |********
     8.000     1.000 (16.67%) |********
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 1

Statistics Record simqs.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 0.8125,   Standard Deviation = 0.403113
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (18.75%) |*********
     1.000    13.000 (81.25%) |****************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 3

Statistics Record simqt.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 0.75,   Standard Deviation = 0.447214
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (25.00%) |************
     1.000    12.000 (75.00%) |*************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 0

Statistics Record simqu.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 0.6875,   Standard Deviation = 0.478714
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.000 (31.25%) |***************
     1.000    11.000 (68.75%) |**********************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Testing LCFSPR queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with LCFSPR queueing discipline
    Creating resource simqt[0] with LCFSPR queueing discipline
    Creating resource simqu[0] with LCFSPR queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 2, interval = 2
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 3
    Updating interval statistics record simqt.length[0]; value = 0, interval = 3
    Updating point statistics record simqt.time[0]; value = 3, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 2, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 0, interval = 1
    Updating point statistics record simqs.time[0]; value = 7, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource notified
    Updating interval statistics record simqt.length[0]; value = 1, interval = 1
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 1, interval = 1
    Updating point statistics record simqu.time[0]; value = 7, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 1
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 1
    Updating point statistics record simqu.time[0]; value = 8, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    ------ Ready list empty, checking for pending resources
    Preempting activity sub5[0] with 1 units of service still required
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 10>>
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 2, interval = 2
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 3
--------------------------------------------------------<<Simulation Time: 11>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 1, interval = 1
    Updating point statistics record simqt.time[0]; value = 4, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Preempting activity sub4[0] with 2 units of service still required
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 13>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 6, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 1, interval = 5
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 5
--------------------------------------------------------<<Simulation Time: 14>>
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 16>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 0, interval = 2
    Updating point statistics record simqs.time[0]; value = 6, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 16

    Updating interval statistics record simqs.length[0]; value = 0, interval = 0

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 2, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.375,   Standard Deviation = 0.806226
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (18.75%) |*********
     1.000     4.000 (25.00%) |************
     2.000     9.000 (56.25%) |****************************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 3

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.125,   Standard Deviation = 0.957427
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (25.00%) |************
     1.000     8.000 (50.00%) |*************************
     2.000     2.000 (12.50%) |******
     3.000     2.000 (12.50%) |******
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 0

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.5,   Standard Deviation = 1.31656
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.000 (31.25%) |***************
     1.000     4.000 (25.00%) |************
     2.000     1.000 ( 6.25%) |***
     3.000     6.000 (37.50%) |******************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 7,   Min Value = 1
   Sampling interval = 16,   Sampling rate = 0.375
   Mean = 3.66667,   Standard Deviation = 2.33809
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     1.000 (16.67%) |********
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 6,   Min Value = 1
   Sampling interval = 13,   Sampling rate = 0.461538
   Mean = 3,   Standard Deviation = 1.78885
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     1.000 (16.67%) |********
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 8,   Min Value = 1
   Sampling interval = 16,   Sampling rate = 0.375
   Mean = 4,   Standard Deviation = 2.82843
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     1.000 (16.67%) |********
     8.000     1.000 (16.67%) |********
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 0

Statistics Record simqs.util:
   Number of intervals = 15, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 1
   Mean = 0.8125,   Standard Deviation = 0.403113
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (18.75%) |*********
     1.000    13.000 (81.25%) |****************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 3

Statistics Record simqt.util:
   Number of intervals = 15, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 1
   Mean = 0.75,   Standard Deviation = 0.447214
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (25.00%) |************
     1.000    12.000 (75.00%) |*************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 0

Statistics Record simqu.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 0.6875,   Standard Deviation = 0.478714
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.000 (31.25%) |***************
     1.000    11.000 (68.75%) |**********************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Testing LCFSPRWP queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with LCFSPRWP queueing discipline
    Creating resource simqt[0] with LCFSPRWP queueing discipline
    Creating resource simqu[0] with LCFSPRWP queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 17 bins, bin size = 1, low bin < 0, high bin >= 15
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 17 bins, bin size = 1, low bin < 0, high bin >= 15
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 17 bins, bin size = 1, low bin < 0, high bin >= 15
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 17 bins, bin size = 1, low bin < 0, high bin >= 15
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 17 bins, bin size = 1, low bin < 0, high bin >= 15
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 17 bins, bin size = 1, low bin < 0, high bin >= 15
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2>>
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 1, interval = 1
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 3, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 1
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 1, interval = 2
    Updating point statistics record simqt.time[0]; value = 3, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 4, interval = 2
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 0, interval = 2
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6>>
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 3, interval = 1
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 6, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9>>
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 2, interval = 3
    Updating point statistics record simqs.time[0]; value = 4, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 10>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 3
    Updating interval statistics record simqt.length[0]; value = 0, interval = 3
    Updating point statistics record simqt.time[0]; value = 3, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3
    Updating point statistics record simqs.time[0]; value = 9, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 13>>
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 0, interval = 1
    Updating point statistics record simqs.time[0]; value = 13, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource notified
    Updating interval statistics record simqt.length[0]; value = 1, interval = 3
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 3
--------------------------------------------------------<<Simulation Time: 15>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 1, interval = 7
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 7
--------------------------------------------------------<<Simulation Time: 18>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 18

    Updating interval statistics record simqs.length[0]; value = 0, interval = 5

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 4, Min Value = 0
   Sampling interval = 18,   Sampling rate = 0.777778
   Mean = 1.77778,   Standard Deviation = 1.30859
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.000 (27.78%) |*************
     1.000     1.000 ( 5.56%) |**
     2.000     6.000 (33.33%) |****************
     3.000     5.000 (27.78%) |*************
     4.000     1.000 ( 5.56%) |**
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 3

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 18,   Sampling rate = 0.777778
   Mean = 0.944444,   Standard Deviation = 0.872604
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     6.000 (33.33%) |****************
     1.000     8.000 (44.44%) |**********************
     2.000     3.000 (16.67%) |********
     3.000     1.000 ( 5.56%) |**
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 0

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 18,   Sampling rate = 0.777778
   Mean = 0.777778,   Standard Deviation = 0.808452
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     7.000 (38.89%) |*******************
     1.000     9.000 (50.00%) |*************************
     2.000     1.000 ( 5.56%) |**
     3.000     1.000 ( 5.56%) |**
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 13,   Min Value = 1
   Sampling interval = 13,   Sampling rate = 0.461538
   Mean = 5.33333,   Standard Deviation = 4.67618
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     1.000 (16.67%) |********
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     1.000 (16.67%) |********
    10.000     0.000 ( 0.00%) |
    11.000     0.000 ( 0.00%) |
    12.000     0.000 ( 0.00%) |
    13.000     1.000 (16.67%) |********
    14.000     0.000 ( 0.00%) |
    15.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 6,   Min Value = 1
   Sampling interval = 15,   Sampling rate = 0.4
   Mean = 2.83333,   Standard Deviation = 1.7224
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
    11.000     0.000 ( 0.00%) |
    12.000     0.000 ( 0.00%) |
    13.000     0.000 ( 0.00%) |
    14.000     0.000 ( 0.00%) |
    15.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 3,   Min Value = 1
   Sampling interval = 18,   Sampling rate = 0.333333
   Mean = 2.33333,   Standard Deviation = 0.816497
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     3.000 (50.00%) |*************************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
    11.000     0.000 ( 0.00%) |
    12.000     0.000 ( 0.00%) |
    13.000     0.000 ( 0.00%) |
    14.000     0.000 ( 0.00%) |
    15.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 5

Statistics Record simqs.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 18,   Sampling rate = 0.777778
   Mean = 0.722222,   Standard Deviation = 0.460889
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.000 (27.78%) |*************
     1.000    13.000 (72.22%) |************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
    11.000     0.000 ( 0.00%) |
    12.000     0.000 ( 0.00%) |
    13.000     0.000 ( 0.00%) |
    14.000     0.000 ( 0.00%) |
    15.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 3

Statistics Record simqt.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 18,   Sampling rate = 0.777778
   Mean = 0.666667,   Standard Deviation = 0.485071
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     6.000 (33.33%) |****************
     1.000    12.000 (66.67%) |*********************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
    11.000     0.000 ( 0.00%) |
    12.000     0.000 ( 0.00%) |
    13.000     0.000 ( 0.00%) |
    14.000     0.000 ( 0.00%) |
    15.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 0

Statistics Record simqu.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 18,   Sampling rate = 0.777778
   Mean = 0.611111,   Standard Deviation = 0.501631
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     7.000 (38.89%) |*******************
     1.000    11.000 (61.11%) |******************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
    11.000     0.000 ( 0.00%) |
    12.000     0.000 ( 0.00%) |
    13.000     0.000 ( 0.00%) |
    14.000     0.000 ( 0.00%) |
    15.000     0.000 ( 0.00%) |
End of Report


Testing PROCSHAR queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with PROCSHAR queueing discipline
    Creating resource simqt[0] with PROCSHAR queueing discipline
    Creating resource simqu[0] with PROCSHAR queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Adjusting service times for resource simqs[0]; old size = 0, new size = 2
    Activity sub1[0] resumes service with 2 units of service required
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 2, interval = 0
    Adjusting service times for resource simqt[0]; old size = 0, new size = 1
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Adjusting service times for resource simqu[0]; old size = 0, new size = 3
    Activity sub4[0] resumes service with 3 units of service required
    Activity sub5[0] resumes service with 3 units of service required
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 3, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Adjusting service times for resource simqt[0]; old size = 1, new size = 1
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2>>
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 1, interval = 2
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource notified
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Adjusting service times for resource simqt[0]; old size = 1, new size = 2
    Activity sub3[0] resumes service with 2 units of service required
    Activity sub1[0] resumes service with 4 units of service required
    Updating interval statistics record simqt.util[0]; value = 2, interval = 1
    Adjusting service times for resource simqs[0]; old size = 2, new size = 1
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 2, interval = 3
    Updating interval statistics record simqu.length[0]; value = 2, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 4, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Adjusting service times for resource simqt[0]; old size = 2, new size = 4
    Activity sub3[0] resumes service with 2 units of service required
    Activity sub1[0] resumes service with 6 units of service required
    Activity sub4[0] resumes service with 8 units of service required
    Activity sub5[0] resumes service with 8 units of service required
    Updating interval statistics record simqt.util[0]; value = 4, interval = 1
    Adjusting service times for resource simqu[0]; old size = 3, new size = 1
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 0, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Adjusting service times for resource simqs[0]; old size = 1, new size = 1
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 3, interval = 2
    Updating interval statistics record simqt.length[0]; value = 3, interval = 2
    Updating point statistics record simqt.time[0]; value = 4, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 4, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 0, interval = 2
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Adjusting service times for resource simqt[0]; old size = 4, new size = 4
    Activity sub1[0] resumes service with 4 units of service required
    Activity sub4[0] resumes service with 6 units of service required
    Activity sub5[0] resumes service with 6 units of service required
    Activity sub3[0] resumes service with 12 units of service required
    Updating interval statistics record simqt.util[0]; value = 4, interval = 0
    Adjusting service times for resource simqu[0]; old size = 1, new size = 1
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 9>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 3, interval = 4
    Updating interval statistics record simqt.length[0]; value = 3, interval = 4
    Updating point statistics record simqt.time[0]; value = 7, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 1, interval = 1
    ------ Ready list empty, checking for pending resources
    Adjusting service times for resource simqt[0]; old size = 4, new size = 3
    Activity sub4[0] resumes service with 1.5 units of service required
    Activity sub5[0] resumes service with 1.5 units of service required
    Activity sub3[0] resumes service with 6 units of service required
    Updating interval statistics record simqt.util[0]; value = 3, interval = 0
    Adjusting service times for resource simqu[0]; old size = 1, new size = 1
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 1
--------------------------------------------------------<<Simulation Time: 10.5>>
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 2, interval = 1.5
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1.5
    Updating point statistics record simqt.time[0]; value = 7.5, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3.5
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Updating point statistics record simqt.time[0]; value = 7.5, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Adjusting service times for resource simqt[0]; old size = 3, new size = 1
    Activity sub3[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Adjusting service times for resource simqs[0]; old size = 1, new size = 2
    Activity sub4[0] resumes service with 6 units of service required
    Activity sub5[0] resumes service with 6 units of service required
    Updating interval statistics record simqs.util[0]; value = 2, interval = 3.5
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1.5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1.5
    Updating point statistics record simqt.time[0]; value = 7, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 16.5>>
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 1, interval = 6
    Updating interval statistics record simqs.length[0]; value = 1, interval = 6
    Updating point statistics record simqs.time[0]; value = 6, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Updating point statistics record simqs.time[0]; value = 6, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 16.5

    Updating interval statistics record simqs.length[0]; value = 0, interval = 0

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 2, Min Value = 0
   Sampling interval = 16.5,   Sampling rate = 0.848485
   Mean = 1.27273,   Standard Deviation = 0.814099
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.500 (21.21%) |**********
     1.000     5.000 (30.30%) |***************
     2.000     8.000 (48.48%) |************************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 4.5

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 4, Min Value = 0
   Sampling interval = 16.5,   Sampling rate = 0.848485
   Mean = 2.06061,   Standard Deviation = 1.74021
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.500 (27.27%) |*************
     1.000     3.500 (21.21%) |**********
     2.000     1.000 ( 6.06%) |***
     3.000     1.500 ( 9.09%) |****
     4.000     6.000 (36.36%) |******************
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 4.5

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 16.5,   Sampling rate = 0.848485
   Mean = 1.0303,   Standard Deviation = 1.0621
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.500 (33.33%) |****************
     1.000     8.000 (48.48%) |************************
     2.000     0.000 ( 0.00%) |
     3.000     3.000 (18.18%) |*********
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 6,   Min Value = 2
   Sampling interval = 16.5,   Sampling rate = 0.363636
   Mean = 3.5,   Standard Deviation = 1.97484
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     0.000 ( 0.00%) |
     2.000     3.000 (50.00%) |*************************
     3.000     1.000 (16.67%) |********
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     2.000 (33.33%) |****************
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 7.5,   Min Value = 1
   Sampling interval = 12,   Sampling rate = 0.5
   Mean = 5.66667,   Standard Deviation = 2.63944
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     4.000 (66.67%) |*********************************
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 3,   Min Value = 2
   Sampling interval = 12,   Sampling rate = 0.5
   Mean = 2.83333,   Standard Deviation = 0.408248
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     0.000 ( 0.00%) |
     2.000     1.000 (16.67%) |********
     3.000     5.000 (83.33%) |*****************************************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 0

Statistics Record simqs.util:
   Number of intervals = 11, Max Value = 2, Min Value = 0
   Sampling interval = 16.5,   Sampling rate = 0.727273
   Mean = 1.27273,   Standard Deviation = 0.814099
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.500 (21.21%) |**********
     1.000     5.000 (30.30%) |***************
     2.000     8.000 (48.48%) |************************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 4.5

Statistics Record simqt.util:
   Number of intervals = 14, Max Value = 4, Min Value = 0
   Sampling interval = 16.5,   Sampling rate = 0.909091
   Mean = 2.06061,   Standard Deviation = 1.74021
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.500 (27.27%) |*************
     1.000     3.500 (21.21%) |**********
     2.000     1.000 ( 6.06%) |***
     3.000     1.500 ( 9.09%) |****
     4.000     6.000 (36.36%) |******************
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 4.5

Statistics Record simqu.util:
   Number of intervals = 11, Max Value = 3, Min Value = 0
   Sampling interval = 16.5,   Sampling rate = 0.727273
   Mean = 1.0303,   Standard Deviation = 1.0621
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.500 (33.33%) |****************
     1.000     8.000 (48.48%) |************************
     2.000     0.000 ( 0.00%) |
     3.000     3.000 (18.18%) |*********
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Testing RAND queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with RAND queueing discipline
    Creating resource simqt[0] with RAND queueing discipline
    Creating resource simqu[0] with RAND queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2>>
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource notified
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 1, interval = 1
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 4, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 1
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 1
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 2, interval = 2
    Updating point statistics record simqt.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 2, interval = 2
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3
    Updating point statistics record simqs.time[0]; value = 4, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 1, interval = 2
    Updating point statistics record simqt.time[0]; value = 6, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 1, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 10>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 6, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 3
    Updating interval statistics record simqt.length[0]; value = 1, interval = 3
    Updating point statistics record simqt.time[0]; value = 3, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 11>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 6, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 10, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 2
--------------------------------------------------------<<Simulation Time: 15>>
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 15

    Updating interval statistics record simqs.length[0]; value = 0, interval = 0

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 2, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 1.26667,   Standard Deviation = 0.703732
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (13.33%) |******
     1.000     7.000 (46.67%) |***********************
     2.000     6.000 (40.00%) |********************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 3

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 4, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 1.66667,   Standard Deviation = 1.17514
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (20.00%) |**********
     1.000     3.000 (20.00%) |**********
     2.000     6.000 (40.00%) |********************
     3.000     2.000 (13.33%) |******
     4.000     1.000 ( 6.67%) |***
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 4

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 1.13333,   Standard Deviation = 0.915475
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (26.67%) |*************
     1.000     6.000 (40.00%) |********************
     2.000     4.000 (26.67%) |*************
     3.000     1.000 ( 6.67%) |***
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 6,   Min Value = 1
   Sampling interval = 15,   Sampling rate = 0.4
   Mean = 3.16667,   Standard Deviation = 1.7224
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     2.000 (33.33%) |****************
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 10,   Min Value = 1
   Sampling interval = 12,   Sampling rate = 0.5
   Mean = 4.16667,   Standard Deviation = 3.3116
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     1.000 (16.67%) |********
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 6,   Min Value = 1
   Sampling interval = 11,   Sampling rate = 0.545455
   Mean = 2.83333,   Standard Deviation = 1.7224
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 0

Statistics Record simqs.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 0.866667,   Standard Deviation = 0.351866
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (13.33%) |******
     1.000    13.000 (86.67%) |*******************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 3

Statistics Record simqt.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 0.8,   Standard Deviation = 0.414039
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (20.00%) |**********
     1.000    12.000 (80.00%) |****************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 4

Statistics Record simqu.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 15,   Sampling rate = 0.933333
   Mean = 0.733333,   Standard Deviation = 0.457738
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (26.67%) |*************
     1.000    11.000 (73.33%) |************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Testing RR queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with RR queueing discipline
    Creating resource simqt[0] with RR queueing discipline
    Creating resource simqu[0] with RR queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 2, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 2, interval = 0
--------------------------------------------------------<<Simulation Time: 0.5>>
    Activity sub1[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0.5
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 2, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 1, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 0
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource already pending
    Updating interval statistics record simqt.length[0]; value = 4, interval = 0
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2>>
    Activity sub3[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 1
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub4[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 0, interval = 2
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    Activity sub5[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5>>
    Activity sub1[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6>>
    Activity sub6[0] completes a time slice of service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 3, interval = 5
    Updating point statistics record simqt.time[0]; value = 5, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 4, interval = 0
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    Updating point statistics record simqt.time[0]; value = 6, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 1
--------------------------------------------------------<<Simulation Time: 7.5>>
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Updating point statistics record simqt.time[0]; value = 7, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 1
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 2, interval = 0
--------------------------------------------------------<<Simulation Time: 8.5>>
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0.5
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 2.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 2, interval = 0
--------------------------------------------------------<<Simulation Time: 9>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 1, interval = 1
    Updating point statistics record simqt.time[0]; value = 8, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 1, interval = 2
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0.5
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 2
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 2, interval = 0
--------------------------------------------------------<<Simulation Time: 9.5>>
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0.5
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 2, interval = 0
--------------------------------------------------------<<Simulation Time: 10>>
    Activity sub3[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0.5
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 10.5>>
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 11>>
    Activity sub1[0] completes a time slice of service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Activity sub3[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 1
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 3
    Updating point statistics record simqt.time[0]; value = 6, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 12

    Updating interval statistics record simqs.length[0]; value = 0, interval = 1

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 2, Min Value = 0
   Sampling interval = 12,   Sampling rate = 1.16667
   Mean = 1.08333,   Standard Deviation = 0.668558
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (16.67%) |********
     1.000     7.000 (58.33%) |*****************************
     2.000     3.000 (25.00%) |************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 0

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 4, Min Value = 0
   Sampling interval = 12,   Sampling rate = 1.16667
   Mean = 2.75,   Standard Deviation = 1.42223
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     4.000 (33.33%) |****************
     2.000     1.000 ( 8.33%) |****
     3.000     1.000 ( 8.33%) |****
     4.000     6.000 (50.00%) |*************************
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 0

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 12,   Sampling rate = 1.16667
   Mean = 1,   Standard Deviation = 0.738549
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (16.67%) |********
     1.000     9.000 (75.00%) |*************************************
     2.000     0.000 ( 0.00%) |
     3.000     1.000 ( 8.33%) |****
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 3,   Min Value = 1
   Sampling interval = 11,   Sampling rate = 0.545455
   Mean = 2.16667,   Standard Deviation = 0.983192
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     2.000 (33.33%) |****************
     2.000     1.000 (16.67%) |********
     3.000     3.000 (50.00%) |*************************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 8,   Min Value = 1
   Sampling interval = 12,   Sampling rate = 0.5
   Mean = 5.5,   Standard Deviation = 2.42899
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     1.000 (16.67%) |********
     6.000     2.000 (33.33%) |****************
     7.000     1.000 (16.67%) |********
     8.000     1.000 (16.67%) |********
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 3,   Min Value = 1
   Sampling interval = 12,   Sampling rate = 0.5
   Mean = 2,   Standard Deviation = 0.894427
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     2.000 (33.33%) |****************
     2.000     2.000 (33.33%) |****************
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 1

Statistics Record simqs.util:
   Number of intervals = 53, Max Value = 2, Min Value = 0
   Sampling interval = 12,   Sampling rate = 4.5
   Mean = 1.08333,   Standard Deviation = 0.668558
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (16.67%) |********
     1.000     7.000 (58.33%) |*****************************
     2.000     3.000 (25.00%) |************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 0

Statistics Record simqt.util:
   Number of intervals = 25, Max Value = 1, Min Value = 0
   Sampling interval = 12,   Sampling rate = 2.16667
   Mean = 1,   Standard Deviation = 0
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000    12.000 (100.00%) |**************************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 0

Statistics Record simqu.util:
   Number of intervals = 17, Max Value = 2, Min Value = 0
   Sampling interval = 12,   Sampling rate = 1.5
   Mean = 0.916667,   Standard Deviation = 0.514929
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (16.67%) |********
     1.000     9.000 (75.00%) |*************************************
     2.000     1.000 ( 8.33%) |****
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Testing RRPRWP queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with RRPRWP queueing discipline
    Creating resource simqt[0] with RRPRWP queueing discipline
    Creating resource simqu[0] with RRPRWP queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 0.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2>>
    Activity sub3[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 2, interval = 2
    Updating point statistics record simqu.time[0]; value = 2, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 2
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4>>
    Activity sub3[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5>>
    Activity sub6[0] completes a time slice of service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Activity sub3[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 5.5>>
    Activity sub2[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 3
    Updating point statistics record simqt.time[0]; value = 3, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6.5>>
    Activity sub1[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 1, interval = 1
    Updating point statistics record simqu.time[0]; value = 7, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 1
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 1
    Updating point statistics record simqs.time[0]; value = 7, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 2 time units
    - Resource already pending
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 1
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 1
    Updating point statistics record simqu.time[0]; value = 8, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    Activity sub5[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 9>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 2
--------------------------------------------------------<<Simulation Time: 9.5>>
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 2.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 10>>
    Activity sub1[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 10.5>>
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 11>>
    Activity sub4[0] completes a time slice of service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 11.5>>
    Activity sub5[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 1, interval = 3
    Updating point statistics record simqt.time[0]; value = 5, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 1, interval = 4
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 4
--------------------------------------------------------<<Simulation Time: 13>>
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 0, interval = 1
    Updating point statistics record simqt.time[0]; value = 5, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 1
--------------------------------------------------------<<Simulation Time: 13.5>>
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 14>>
    Activity sub1[0] completes a time slice of service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 14.5>>
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 1.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 15>>
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 15.5>>
    Activity sub4[0] completes a time slice of service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 0.5 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 16>>
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0.5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 16

    Updating interval statistics record simqs.length[0]; value = 0, interval = 0

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 2, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.1875,   Standard Deviation = 0.75
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (18.75%) |*********
     1.000     7.000 (43.75%) |*********************
     2.000     6.000 (37.50%) |******************
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 3

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.125,   Standard Deviation = 0.885061
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (25.00%) |************
     1.000     7.000 (43.75%) |*********************
     2.000     4.000 (25.00%) |************
     3.000     1.000 ( 6.25%) |***
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 1

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 16,   Sampling rate = 0.875
   Mean = 1.5,   Standard Deviation = 1.31656
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.000 (31.25%) |***************
     1.000     4.000 (25.00%) |************
     2.000     1.000 ( 6.25%) |***
     3.000     6.000 (37.50%) |******************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 7,   Min Value = 1
   Sampling interval = 16,   Sampling rate = 0.375
   Mean = 3.16667,   Standard Deviation = 2.04124
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     3.000 (50.00%) |*************************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     1.000 (16.67%) |********
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 5,   Min Value = 1
   Sampling interval = 13,   Sampling rate = 0.461538
   Mean = 3,   Standard Deviation = 1.67332
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     2.000 (33.33%) |****************
     3.000     1.000 (16.67%) |********
     4.000     0.000 ( 0.00%) |
     5.000     2.000 (33.33%) |****************
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 8,   Min Value = 1
   Sampling interval = 15,   Sampling rate = 0.4
   Mean = 4,   Standard Deviation = 2.82843
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     2.000 (33.33%) |****************
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     1.000 (16.67%) |********
     8.000     1.000 (16.67%) |********
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 0

Statistics Record simqs.util:
   Number of intervals = 53, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 3.375
   Mean = 0.8125,   Standard Deviation = 0.403113
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     3.000 (18.75%) |*********
     1.000    13.000 (81.25%) |****************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 3

Statistics Record simqt.util:
   Number of intervals = 25, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 1.625
   Mean = 0.75,   Standard Deviation = 0.447214
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (25.00%) |************
     1.000    12.000 (75.00%) |*************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 1

Statistics Record simqu.util:
   Number of intervals = 17, Max Value = 1, Min Value = 0
   Sampling interval = 16,   Sampling rate = 1.125
   Mean = 0.6875,   Standard Deviation = 0.478714
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     5.000 (31.25%) |***************
     1.000    11.000 (68.75%) |**********************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Testing SJN queues

    Creating real valued state variable SimTime[0] = 0

DRIVER RESET -------------------------------------------<<Simulation Time: 0>>

    Creating resource simqs[0] with SJN queueing discipline
    Creating resource simqt[0] with SJN queueing discipline
    Creating resource simqu[0] with SJN queueing discipline
    Creating process usermain[0]
    Scheduling activity usermain[0] to occur in 0 time units
User activating Simulation Driver
Transferring to process usermain[0]
    Creating event sub1[0]
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
    Creating statistics record simqs.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqs.length[0]; value = 0, interval = 0
    Creating statistics record simqt.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqt.length[0]; value = 0, interval = 0
    Creating statistics record simqu.length[0]
    - Means and histograms computed
    - 7 bins, bin size = 1, low bin < 0, high bin >= 5
    Updating interval statistics record simqu.length[0]; value = 0, interval = 0
    Creating statistics record simqs.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqt.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqu.time[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Creating statistics record simqs.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqs.util[0]; value = 0, interval = 0
    Creating statistics record simqt.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqt.util[0]; value = 0, interval = 0
    Creating statistics record simqu.util[0]
    - Means and histograms computed
    - 12 bins, bin size = 1, low bin < 0, high bin >= 10
    Updating interval statistics record simqu.util[0]; value = 0, interval = 0
    Process usermain[0] executing Join
    - 6 active child activities exist, current process waits
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqs[0] for 3 time units
    - Resource notified
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
Transferring to process sub2[0]
    Process sub2[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
Transferring to process sub3[0]
    Process sub3[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 1, interval = 0
Transferring to process sub4[0]
    Process sub4[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
Transferring to process sub5[0]
    Process sub5[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
Transferring to process sub6[0]
    Process sub6[0] requests 2 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub1[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub3[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 1>>
    Activity sub4[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 2, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 2 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 2>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 1, interval = 1
    Updating point statistics record simqt.time[0]; value = 2, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 3>>
    Activity sub1[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 1, interval = 3
    Updating point statistics record simqs.time[0]; value = 3, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqt[0] for 1 time units
    - Resource notified
    Updating interval statistics record simqt.length[0]; value = 3, interval = 1
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 1, interval = 2
    Updating point statistics record simqu.time[0]; value = 3, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 3 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 2, interval = 0
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub3[0]
    Process sub3[0] requests 3 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 4>>
    Activity sub1[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 2, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Initiating event sub1[0]
    Rescheduling event sub1[0] to use resource simqu[0] for 2 time units
    - Resource notified
    Updating interval statistics record simqu.length[0]; value = 3, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub4[0] resumes service with 2 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 6>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 6, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 1, interval = 0
    Activity sub5[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 2, interval = 2
    Updating point statistics record simqu.time[0]; value = 6, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 1 unit(s) of service from resource simqt[0]
    Updating interval statistics record simqt.length[0]; value = 3, interval = 2
    Activity sub4[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 2
    Updating interval statistics record simqt.length[0]; value = 2, interval = 0
    Updating point statistics record simqt.time[0]; value = 5, weight = 1
Transferring to process sub4[0]
    Process sub4[0] requests 3 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 2, interval = 0
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub1[0] resumes service with 2 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub5[0] resumes service with 1 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 7>>
    Activity sub5[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 1
    Updating interval statistics record simqt.length[0]; value = 1, interval = 1
    Updating point statistics record simqt.time[0]; value = 1, weight = 1
Transferring to process sub5[0]
    Process sub5[0] requests 2 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 3, interval = 1
    ------ Ready list empty, checking for pending resources
    Activity sub3[0] resumes service with 3 units of service required
    Updating interval statistics record simqt.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 8>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 2, interval = 1
    Updating point statistics record simqs.time[0]; value = 2, weight = 1
Transferring to process sub2[0]
    Process sub2[0] requests 1 unit(s) of service from resource simqs[0]
    Updating interval statistics record simqs.length[0]; value = 3, interval = 0
    Activity sub1[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 2
    Updating interval statistics record simqu.length[0]; value = 1, interval = 2
    Updating point statistics record simqu.time[0]; value = 4, weight = 1
Initiating event sub1[0]
    Event sub1[0] set to deleting mode
Event sub1[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub2[0] resumes service with 1 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
    Activity sub6[0] resumes service with 3 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 9>>
    Activity sub2[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 1
    Updating interval statistics record simqs.length[0]; value = 2, interval = 1
    Updating point statistics record simqs.time[0]; value = 1, weight = 1
Transferring to process sub2[0]
Process sub2[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub5[0] resumes service with 2 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 10>>
    Activity sub3[0] completes service from resource simqt[0]
    Updating interval statistics record simqt.util[0]; value = 0, interval = 3
    Updating interval statistics record simqt.length[0]; value = 0, interval = 3
    Updating point statistics record simqt.time[0]; value = 7, weight = 1
Transferring to process sub3[0]
Process sub3[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 11>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 3
    Updating interval statistics record simqu.length[0]; value = 0, interval = 3
    Updating point statistics record simqu.time[0]; value = 8, weight = 1
Transferring to process sub6[0]
    Process sub6[0] requests 1 unit(s) of service from resource simqu[0]
    Updating interval statistics record simqu.length[0]; value = 1, interval = 0
    Activity sub5[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 2
    Updating interval statistics record simqs.length[0]; value = 1, interval = 2
    Updating point statistics record simqs.time[0]; value = 4, weight = 1
Transferring to process sub5[0]
Process sub5[0] terminating
    ------ Ready list empty, checking for pending resources
    Activity sub6[0] resumes service with 1 units of service required
    Updating interval statistics record simqu.util[0]; value = 1, interval = 0
    Activity sub4[0] resumes service with 3 units of service required
    Updating interval statistics record simqs.util[0]; value = 1, interval = 0
--------------------------------------------------------<<Simulation Time: 12>>
    Activity sub6[0] completes service from resource simqu[0]
    Updating interval statistics record simqu.util[0]; value = 0, interval = 1
    Updating interval statistics record simqu.length[0]; value = 0, interval = 1
    Updating point statistics record simqu.time[0]; value = 1, weight = 1
Transferring to process sub6[0]
Process sub6[0] terminating
    ------ Ready list empty, checking for pending resources
--------------------------------------------------------<<Simulation Time: 14>>
    Activity sub4[0] completes service from resource simqs[0]
    Updating interval statistics record simqs.util[0]; value = 0, interval = 3
    Updating interval statistics record simqs.length[0]; value = 0, interval = 3
    Updating point statistics record simqs.time[0]; value = 8, weight = 1
Transferring to process sub4[0]
Process sub4[0] terminating
    All child activities complete, process usermain[0] released from Join
Transferring to process usermain[0]
Process usermain[0] terminating
    ------ Ready list empty, checking for pending resources

READY & EVENT LISTS EMPTY: Time = 14

    Updating interval statistics record simqs.length[0]; value = 0, interval = 0

Statistics Record simqs.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 14,   Sampling rate = 1
   Mean = 1.71429,   Standard Deviation = 0.726273
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     6.000 (42.86%) |*********************
     2.000     6.000 (42.86%) |*********************
     3.000     2.000 (14.29%) |*******
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.length[0]; value = 0, interval = 4

Statistics Record simqt.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 14,   Sampling rate = 1
   Mean = 1.21429,   Standard Deviation = 0.974961
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (28.57%) |**************
     1.000     4.000 (28.57%) |**************
     2.000     5.000 (35.71%) |*****************
     3.000     1.000 ( 7.14%) |***
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.length[0]; value = 0, interval = 2

Statistics Record simqu.length:
   Number of intervals = 13, Max Value = 3, Min Value = 0
   Sampling interval = 14,   Sampling rate = 1
   Mean = 1.64286,   Standard Deviation = 1.00821
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (14.29%) |*******
     1.000     4.000 (28.57%) |**************
     2.000     5.000 (35.71%) |*****************
     3.000     3.000 (21.43%) |**********
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqs.time:
   Number of samples = 6,   Max Value = 8,   Min Value = 1
   Sampling interval = 14,   Sampling rate = 0.428571
   Mean = 4,   Standard Deviation = 2.60768
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     1.000 (16.67%) |********
     2.000     1.000 (16.67%) |********
     3.000     1.000 (16.67%) |********
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     0.000 ( 0.00%) |
     8.000     1.000 (16.67%) |********
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqt.time:
   Number of samples = 6,   Max Value = 7,   Min Value = 1
   Sampling interval = 10,   Sampling rate = 0.6
   Mean = 2.83333,   Standard Deviation = 2.56255
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     3.000 (50.00%) |*************************
     2.000     1.000 (16.67%) |********
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     1.000 (16.67%) |********
     6.000     0.000 ( 0.00%) |
     7.000     1.000 (16.67%) |********
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report


Statistics Record simqu.time:
   Number of samples = 6,   Max Value = 8,   Min Value = 1
   Sampling interval = 12,   Sampling rate = 0.5
   Mean = 3.83333,   Standard Deviation = 2.78687
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000     2.000 (33.33%) |****************
     2.000     0.000 ( 0.00%) |
     3.000     1.000 (16.67%) |********
     4.000     1.000 (16.67%) |********
     5.000     0.000 ( 0.00%) |
     6.000     1.000 (16.67%) |********
     7.000     0.000 ( 0.00%) |
     8.000     1.000 (16.67%) |********
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqs.util[0]; value = 0, interval = 0

Statistics Record simqs.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 14,   Sampling rate = 1
   Mean = 1,   Standard Deviation = 0
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     0.000 ( 0.00%) |
     1.000    14.000 (100.00%) |**************************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqt.util[0]; value = 0, interval = 4

Statistics Record simqt.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 14,   Sampling rate = 1
   Mean = 0.714286,   Standard Deviation = 0.468807
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     4.000 (28.57%) |**************
     1.000    10.000 (71.43%) |***********************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

    Updating interval statistics record simqu.util[0]; value = 0, interval = 2

Statistics Record simqu.util:
   Number of intervals = 13, Max Value = 1, Min Value = 0
   Sampling interval = 14,   Sampling rate = 1
   Mean = 0.857143,   Standard Deviation = 0.363137
      Bin         Value
      ---         -----
       -       0.000 ( 0.00%) |
     0.000     2.000 (14.29%) |*******
     1.000    12.000 (85.71%) |******************************************
     2.000     0.000 ( 0.00%) |
     3.000     0.000 ( 0.00%) |
     4.000     0.000 ( 0.00%) |
     5.000     0.000 ( 0.00%) |
     6.000     0.000 ( 0.00%) |
     7.000     0.000 ( 0.00%) |
     8.000     0.000 ( 0.00%) |
     9.000     0.000 ( 0.00%) |
    10.000     0.000 ( 0.00%) |
End of Report

