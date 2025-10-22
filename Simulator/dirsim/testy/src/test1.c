#include "sim.h"

EVENT *event4;
EVENT *event5;
EVENT *event6;
void Event4();
void Event5();
void Event6();

void Sub1()
{
   printf("Entered Sub1\n");
   ProcessDelay(0.0);
}

void Sub2()
{
   printf("Entered Sub2\n");
   ProcessDelay(0.0);
};

void Sub3()
{
   printf("Entered Sub3\n");
   ProcessDelay(0.0);
}

void Event4()
{
   printf("Initiated Event4\n");
   event5 = NewEvent("event5",Event5,DELETE,0);
   ActivitySchedTime(event5,0.0,INDEPENDENT);
}

void Event5()
{
   printf("Initiated Event5\n");
   event6 = NewEvent("event6",Event6,DELETE,0);
   ActivitySchedTime(event6,0.0,INDEPENDENT);
}

void Event6()
{
   printf("Initiated Event6\n");
}

void SubA()
{
   int *ip;
   ip = (int*)ActivityGetArg(ME);
   printf("SubA: k = %d\n",*ip);
   ProcessDelay(1.0);
   DriverInterrupt(1);
   ProcessDelay(8.0);
   ProcessDelay(3.0);
   ProcessDelay(5.0);
   ProcessDelay(200.0);
}

void SubB()
{
   int *ip;
   ip = (int*)ActivityGetArg(ME);
   printf("SubB: k = %d\n",*ip);
   ProcessDelay(2.0);
   DriverInterrupt(2);
   ProcessDelay(6.0);
   ProcessDelay(2.0);
   ProcessDelay(3.0);
}

void UMain1()
{
   PROCESS *sub1;
   PROCESS *sub2;
   PROCESS *sub3;

   sub1 = NewProcess("sub1",Sub1,0);
   ActivitySchedTime(sub1,0.0,FORK);
   sub2 = NewProcess("sub2",Sub2,0);
   ActivitySchedTime(sub2,0.0,FORK);
   sub3 = NewProcess("sub3",Sub3,0);
   ActivitySchedTime(sub3,0.0,FORK);
   event4 = NewEvent("event4",Event4,DELETE,0);
   ActivitySchedTime(event4,0.0,FORK);
   ProcessJoin();
   printf("usermain passes the join\n");
}

void UMain2()
{
   PROCESS *suba, *subb;

   int i = 100;
   int j = 200;

   suba = NewProcess("suba",SubA,0);
   ActivitySetArg(suba,&i,4);
   ActivitySchedTime(suba,4.5,INDEPENDENT);
   subb = NewProcess("subb",SubB,0);
   ActivitySetArg(subb,&j,4);
   ActivitySchedTime(subb,2.3,INDEPENDENT);
   ProcessDelay(5.0);
}

void UserMain(argc,argv)
int argc;
char *argv[];
{
   PROCESS *usermain;
   int retval;

   if (argc > 1) TraceLevel = atoi(argv[1]);

/*   EventListSelect(LINQUE, 2, 10.0);*/
   EventListCollectStats(LENGTH,MEANS,HIST,8,0.0,8.0);
   EventListCollectStats(BINS,MEANS,HIST,8,0.0,8.0);
   EventListCollectStats(BINWIDTH,MEANS,HIST,8,0.0,8.0);
   EventListCollectStats(EMPTYBINS,MEANS,HIST,8,0.0,8.0);

   usermain = NewProcess("usermain",UMain1,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   StatrecReport(EventListStatPtr(LENGTH));
   StatrecReport(EventListStatPtr(BINS));
   StatrecReport(EventListStatPtr(BINWIDTH));
   StatrecReport(EventListStatPtr(EMPTYBINS));
   EventListResetStats();

   usermain = NewProcess("usermain",UMain2,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   while (retval = DriverRun(0.0)) printf("Return value = %d\n",retval);
   StatrecReport(EventListStatPtr(LENGTH));
   StatrecReport(EventListStatPtr(BINS));
   StatrecReport(EventListStatPtr(BINWIDTH));
   StatrecReport(EventListStatPtr(EMPTYBINS));
}
