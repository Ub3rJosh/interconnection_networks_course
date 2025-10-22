#include "sim.h"

int test;

RESOURCE *s;
RESOURCE *t;
RESOURCE *u;

/*  USER ROUTINES  */

void Sub1()
{
   if (test != SJN) {
      switch(EventGetState()) {
         case 0: EventReschedRes(s,1.0,1);
                 break;
         case 1: EventReschedRes(t,2.0,2);
                 break;
         case 2: EventReschedRes(u,3.0,3);
                 break;
         case 3: EventSetDelFlag();
      }
   }
   else {
      switch(EventGetState()) {
         case 0: EventReschedRes(s,3.0,1);
                 break;
         case 1: EventReschedRes(t,1.0,2);
                 break;
         case 2: EventReschedRes(u,2.0,3);
                 break;
         case 3: EventSetDelFlag();
      }
   }
}

void Sub2()
{
   if (test != SJN) {
      ResourceUse(s,1.0);
      ResourceUse(s,2.0);
      ResourceUse(s,3.0);
   }
   else {
      ResourceUse(s,3.0);
      ResourceUse(s,2.0);
      ResourceUse(s,1.0);
   }
}

void Sub3()
{
   if (test != SJN) {
      ResourceUse(t,1.0);
      ResourceUse(t,2.0);
      ResourceUse(t,3.0);
   }
   else {
      ResourceUse(t,2.0);
      ResourceUse(t,1.0);
      ResourceUse(t,3.0);
   }
}

void Sub4()
{
   ResourceUse(u,1.0);
   ResourceUse(t,2.0);
   ResourceUse(s,3.0);
}

void Sub5()
{
   if (test != SJN) {
      ResourceUse(u,1.0);
      ResourceUse(t,2.0);
      ResourceUse(s,3.0);
   }
   else {
      ResourceUse(u,3.0);
      ResourceUse(t,1.0);
      ResourceUse(s,2.0);
   }
}

void Sub6()
{
   if (test != SJN) {
      ResourceUse(u,1.0);
      ResourceUse(u,2.0);
      ResourceUse(u,3.0);
   } 
   else {
      ResourceUse(u,2.0);
      ResourceUse(u,3.0);
      ResourceUse(u,1.0);
   } 
}

void UMain()
{
   PROCESS *sub1;
   PROCESS *sub2;
   PROCESS *sub3;
   PROCESS *sub4;
   PROCESS *sub5; 
   PROCESS *sub6;

   sub1 = NewEvent("sub1",Sub1,NODELETE,0);
   ActivitySchedTime(sub1,0.0,FORK);
   sub2 = NewProcess("sub2",Sub2,0);
   ActivitySchedTime(sub2,0.0,FORK);
   sub3 = NewProcess("sub3",Sub3,0);
   ActivitySchedTime(sub3,0.0,FORK);
   sub4 = NewProcess("sub4",Sub4,0);
   ActivitySchedTime(sub4,0.0,FORK);
   sub5 = NewProcess("sub5",Sub5,0);
   ActivitySchedTime(sub5,0.0,FORK);
   sub6 = NewProcess("sub6",Sub6,0);
   ActivitySchedTime(sub6,0.0,FORK);
   
   if (test == FCFSPRWP) {
      ProcessSetPriority(sub5,1.0);
      ProcessSetPriority(sub6,2.0);
      QueueCollectStats(s,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(t,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(u,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(s,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(t,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(u,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(s,UTIL,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(t,UTIL,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(u,UTIL,MEANS,HIST,10,0.0,10.0);
   }
   else if (test == LCFSPRWP) {
      ProcessSetPriority(sub2,1.0);
      ProcessSetPriority(sub3,2.0);
      ProcessSetPriority(sub4,5.0);
      ProcessSetPriority(sub5,4.0);
      ProcessSetPriority(sub6,3.0);
      QueueCollectStats(s,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(t,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(u,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(s,TIME,MEANS,HIST,15,0.0,15.0);
      QueueCollectStats(t,TIME,MEANS,HIST,15,0.0,15.0);
      QueueCollectStats(u,TIME,MEANS,HIST,15,0.0,15.0);
      QueueCollectStats(s,UTIL,MEANS,HIST,15,0.0,15.0);
      QueueCollectStats(t,UTIL,MEANS,HIST,15,0.0,15.0);
      QueueCollectStats(u,UTIL,MEANS,HIST,15,0.0,15.0);
   }
   else if (test == RRPRWP) {
      ProcessSetPriority(sub1,1.0);
      ProcessSetPriority(sub2,2.0);
      ProcessSetPriority(sub3,3.0);
      ProcessSetPriority(sub4,1.0);
      ProcessSetPriority(sub5,2.0);
      ProcessSetPriority(sub6,3.0);
      QueueCollectStats(s,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(t,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(u,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(s,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(t,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(u,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(s,UTIL,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(t,UTIL,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(u,UTIL,MEANS,HIST,10,0.0,10.0);
   }
   else { 
      QueueCollectStats(s,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(t,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(u,LENGTH,MEANS,HIST,5,0.0,5.0);
      QueueCollectStats(s,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(t,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(u,TIME,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(s,UTIL,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(t,UTIL,MEANS,HIST,10,0.0,10.0);
      QueueCollectStats(u,UTIL,MEANS,HIST,10,0.0,10.0);
   }

   ProcessJoin();
}

void UserMain(argc,argv)
int argc;
char *argv[];
{
   PROCESS *usermain;

   if (argc > 1) TraceLevel = atoi(argv[1]);
   
   printf("\nTesting FCFS queues\n\n");
   test = FCFS;

   s = NewResource("simqs",FCFS,1,0.0);
   t = NewResource("simqt",FCFS,1,0.0);
   u = NewResource("simqu",FCFS,1,0.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting FCFSPRWP queues\n\n");
   test = FCFSPRWP;

   DriverReset();

   s = NewResource("simqs",FCFSPRWP,1,0.0);
   t = NewResource("simqt",FCFSPRWP,1,0.0);
   u = NewResource("simqu",FCFSPRWP,1,0.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting LCFS queues\n\n");
   test = LCFS;

   DriverReset();

   s = NewResource("simqs",LCFS,1,0.0);
   t = NewResource("simqt",LCFS,1,0.0);
   u = NewResource("simqu",LCFS,1,0.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting LCFSPR queues\n\n");
   test = LCFSPR;

   DriverReset();

   s = NewResource("simqs",LCFSPR,1,0.0);
   t = NewResource("simqt",LCFSPR,1,0.0);
   u = NewResource("simqu",LCFSPR,1,0.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting LCFSPRWP queues\n\n");
   test = LCFSPRWP;

   DriverReset();

   s = NewResource("simqs",LCFSPRWP,1,0.0);
   t = NewResource("simqt",LCFSPRWP,1,0.0);
   u = NewResource("simqu",LCFSPRWP,1,0.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting PROCSHAR queues\n\n");
   test = PROCSHAR;

   DriverReset();

   s = NewResource("simqs",PROCSHAR,1,0.0);
   t = NewResource("simqt",PROCSHAR,1,0.0);
   u = NewResource("simqu",PROCSHAR,1,0.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting RAND queues\n\n");
   test = RAND;

   DriverReset();

   s = NewResource("simqs",RAND,1,0.0);
   t = NewResource("simqt",RAND,1,0.0);
   u = NewResource("simqu",RAND,1,0.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting RR queues\n\n");
   test = RR;

   DriverReset();

   s = NewResource("simqs",RR,3,0.5);
   t = NewResource("simqt",RR,1,1.0);
   u = NewResource("simqu",RR,2,2.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting RRPRWP queues\n\n");
   test = RRPRWP;

   DriverReset();

   s = NewResource("simqs",RRPRWP,1,0.5);
   t = NewResource("simqt",RRPRWP,1,1.0);
   u = NewResource("simqu",RRPRWP,1,2.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

   printf("\nTesting SJN queues\n\n");
   test = SJN;

   DriverReset();

   s = NewResource("simqs",SJN,1,0.0);
   t = NewResource("simqt",SJN,1,0.0);
   u = NewResource("simqu",SJN,1,0.0);

   usermain = NewProcess("usermain",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(QueueStatPtr(s,LENGTH));
   StatrecReport(QueueStatPtr(t,LENGTH));
   StatrecReport(QueueStatPtr(u,LENGTH));
   StatrecReport(QueueStatPtr(s,TIME));
   StatrecReport(QueueStatPtr(t,TIME));
   StatrecReport(QueueStatPtr(u,TIME));
   StatrecReport(QueueStatPtr(s,UTIL));
   StatrecReport(QueueStatPtr(t,UTIL));
   StatrecReport(QueueStatPtr(u,UTIL));

}
