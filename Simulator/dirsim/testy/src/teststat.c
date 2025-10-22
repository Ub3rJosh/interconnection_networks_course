#include "sim.h"

STATREC *stat1;
STATREC *stat2;
STATREC *stat3;
STATREC *stat4;
STATREC *stat5;

void SubAP()
{
   int *ip,i;
   ip = (int *) ActivityGetArg(ME);
   printf("SubA: k = %d\n",*ip);
   for (i=0; i<*ip; i++) StatrecUpdate(stat1,1.0,1.0);
}

void SubBP()
{
   int *ip,i;
   float j = 10.0;
   ip = (int *) ActivityGetArg(ME);
   printf("SubB: k = %d\n",*ip);
   for (i=0; i<*ip; i++) StatrecUpdate(stat2,(float)(i%3),j);
}

void SubAI()
{
   int *ip,i;
   ip = (int*) ActivityGetArg(ME);
   printf("SubA: k = %d\n",*ip);
   for (i=0; i<*ip; i++) StatrecUpdate(stat1,1.0,GetSimTime());
}

void SubBI()
{
   int *ip,i;
   float j = 10.0;
   ip = (int*) ActivityGetArg(ME);
   printf("SubB: k = %d\n",*ip);
   for (i=0; i<*ip; i++) StatrecUpdate(stat2,(float)(i%3),j);
}

void SubAPR()
{
   int *ip;
   ProcessDelay(3.0);
   ActivityStatRept(ME);
}

void SubBPR()
{
   int *ip;
   ProcessDelay(4.0);
   ActivityStatRept(ME);
}


void UMainP()
{
   PROCESS *suba;
   PROCESS *subb;
   int i = 10;
   int j = 9;

   suba = NewProcess("suba",SubAP,0);
   ActivitySetArg(suba,(char*)(&i),UNKNOWN);
   ActivitySchedTime(suba,0.0,INDEPENDENT);
   subb = NewProcess("subb",SubBP,0);
   ActivitySetArg(subb,(char*)(&j),UNKNOWN);
   ActivitySchedTime(subb,0.0,INDEPENDENT);
   ProcessDelay(5.0);

   StatrecReport(stat1);
   StatrecReport(stat2);

   StatrecReset(stat2);
   StatrecUpdate(stat2,0.0,4.0);
   StatrecUpdate(stat2,2.0,9.5);
   StatrecUpdate(stat2,1.0,4.5);
   StatrecUpdate(stat2,2.0,1.0);
   StatrecUpdate(stat2,0.0,20.0);
   StatrecUpdate(stat2,2.0,3.5);
   StatrecReport(stat2);

   StatrecUpdate(stat3,1.0,1.2);
   StatrecUpdate(stat3,1.0,2.1);
   StatrecUpdate(stat3,1.0,4.6);
   StatrecUpdate(stat3,1.0,3.5);
   StatrecReport(stat3);

   StatrecUpdate(stat4,1.0,3.0);
   StatrecUpdate(stat4,2.0,2.0);
   StatrecUpdate(stat4,5.0,1.0);
   StatrecUpdate(stat4,0.0,0.0);
   StatrecReport(stat4);

   StatrecReset(stat4);
   StatrecUpdate(stat4,1.0,0.0);
   StatrecUpdate(stat4,2.0,3.0);
   StatrecUpdate(stat4,5.0,4.0);
   StatrecUpdate(stat4,0.0,9.0);
   StatrecReport(stat4);

   StatrecUpdate(stat5,1.0,0.0);
   StatrecUpdate(stat5,2.0,3.0);
   StatrecUpdate(stat5,5.0,4.0);
   StatrecUpdate(stat5,0.0,9.0);
   StatrecReport(stat5);

}


void UMainI()
{
   PROCESS *suba;
   PROCESS *subb;
   int i = 10;
   int j = 9;

   suba = NewProcess("suba",SubAI,0);
   ActivitySetArg(suba,(char*)(&i),UNKNOWN);
   ActivitySchedTime(suba,0.0,INDEPENDENT);
   subb = NewProcess("subb",SubBI,0);
   ActivitySetArg(subb,(char*)(&j),UNKNOWN);
   ActivitySchedTime(subb,0.0,INDEPENDENT);
   ProcessDelay(5.0);

   StatrecReport(stat1);
   StatrecReport(stat2);
   StatrecReset(stat2);
   StatrecUpdate(stat2,0.0,4.0);
   StatrecUpdate(stat2,2.0,GetSimTime());
   StatrecUpdate(stat2,1.0,5.5);
   StatrecUpdate(stat2,2.0,9.5);
   StatrecUpdate(stat2,0.0,20.0);
   StatrecUpdate(stat2,2.0,23.5);
   StatrecReport(stat2);

   StatrecUpdate(stat3,1.0,1.2);
   StatrecUpdate(stat3,1.0,2.1);
   StatrecUpdate(stat3,1.0,4.6);
   StatrecUpdate(stat3,1.0,3.5);
   StatrecReport(stat3);

   StatrecUpdate(stat4,1.0,6.0);
   StatrecUpdate(stat4,2.0,7.0);
   StatrecUpdate(stat4,5.0,8.0);
   StatrecUpdate(stat4,0.0,9.0);
   StatrecReport(stat4);

   StatrecReset(stat4);
   ProcessDelay(1.0);
   StatrecUpdate(stat4,1.0,5.0);
   ProcessDelay(2.0);
   StatrecUpdate(stat4,2.0,8.0);
   ProcessDelay(3.0);
   StatrecUpdate(stat4,5.0,10.5);
   ProcessDelay(4.0);
   StatrecUpdate(stat4,3.0,14.0);
   ProcessDelay(5.0);
   StatrecUpdate(stat4,0.0,20.0);
   ProcessDelay(6.0);
   StatrecReport(stat4);

}


void UMainPR()
{
   PROCESS *suba;
   PROCESS *subb;

   suba = NewProcess("suba",SubAPR,0);
   ActivityCollectStats(suba);
   ProcessDelay(1.0);
   ActivitySchedTime(suba,2.0,FORK);
   subb = NewProcess("subb",SubBPR,0);
   ActivityCollectStats(subb);
   ProcessDelay(3.0);
   ActivitySchedTime(subb,4.0,FORK);
   ProcessJoin();
   ActivityStatRept(ME);
}


void UserMain(argc,argv)
int argc;
char *argv[];
{
   PROCESS *usermain;

   if (argc > 1) TraceLevel = atoi(argv[1]);

   StatrecSetHistSz(100);
   stat1 = NewStatrec("#1",POINT,NOMEANS,NOHIST,0,0.0,0.0);
   stat2 = NewStatrec("#2",POINT,NOMEANS,HIST,1,1.0,2.0);
   stat3 = NewStatrec("#3",POINT,MEANS,NOHIST,0,0.0,0.0);
   stat4 = NewStatrec("#4",POINT,MEANS,HIST,4,0.0,10.0);
   stat5 = NewStatrec("#4",POINT,MEANS,HIST,4,1.0,5.0);
   StatrecSetHistSz(20);
   usermain = NewProcess("usermain",UMainP,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   DriverReset();

   stat1 = NewStatrec("#1",INTERVAL,NOMEANS,NOHIST,0,0.0,0.0);
   stat2 = NewStatrec("#2",INTERVAL,NOMEANS,HIST,1,1.0,2.0);
   stat3 = NewStatrec("#3",INTERVAL,MEANS,NOHIST,0,0.0,0.0);
   stat4 = NewStatrec("#4",INTERVAL,MEANS,HIST,4,0.0,10.0);
   usermain = NewProcess("usermain",UMainI,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   DriverReset();
   
   usermain = NewProcess("usermain",UMainPR,0);
   ActivityCollectStats(usermain);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);
}




