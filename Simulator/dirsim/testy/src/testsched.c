#include   "sim.h"

SEMAPHORE *sem;
FLAG *sev;
IVAR *iv;
int contest() { return (Ival(iv) != 0); };
CONDITION *con;
EVENT *evset1;
EVENT *evset2;
EVENT *evset3;
EVENT *evsig1;
EVENT *evsig2;
EVENT *evsig3;
EVENT *evsetsv1;
EVENT *evsetsv2;
EVENT *evsetsv3;

void ProcA()
{ 
   int *ip;
   ip = (int*)ActivityGetArg(ME);
   TracePrint("    Process A starts with agrument = %d\n",*ip);
   ProcessDelay(0.5);
}

void ProcAx()
{
   int *ip;
   ip = (int*)ActivityGetArg(ME);
   printf("    Process A starts with agrument = %d\n",*ip);
}

void ProcB()
{
   TracePrint( "    Process B starts with argument = %d\n",*(int*)ActivityGetArg(ME) );
   ProcessDelay(0.4);
}

void ProcBx()
{
   printf( "    Process B starts with argument = %d\n",*(int*)ActivityGetArg(ME) );
}

void ProcC()
{

   TracePrint( "    Process C starts with no arguments\n" );
   ProcessDelay(0.3);
}

void ProcCx()
{
   printf( "    Process C starts with no arguments\n" );
}

void EvA()
{
   TracePrint( "    Event A occurs with argurment = %d, Type = %d\n",
            *(int*)ActivityGetArg(ME),EventGetType(ME) );
};

void EvB()
{
   int *ip;
   ip = (int*)ActivityGetArg(ME);
   if (ip == NULL)
      printf( "    Event B occurs with no arguments\n" );
   else
      printf( "    Event B occurs with argurment = %d\n",*ip);
}

void EvSignal()
{
   SemaphoreSignal(sem);
}

void EvSet()
{
   FlagSet(sev);
}

void EvSetSV()
{
   Iset(iv,1);
}


void UMain1()
{
   PROCESS *proca;
   PROCESS *procb;
   PROCESS *procc;
   EVENT   *eva;
   EVENT   *evb;

   int i = 100;
   int j = 200;

   TracePrint("\nTesting the operation ActivitySchedTime(INDEPENDENT) for processes\n\n");

   proca = NewProcess("A",ProcA,DEFAULTSTK);
/* ActivitySchedTime(proca,-1.0,INDEPENDENT);   Uncomment to test error trap */
   ActivitySetArg(proca,&i,UNKNOWN);
   ActivitySchedTime(proca,0.0,INDEPENDENT);
   procb = NewProcess("B",ProcB,DEFAULTSTK);
   ActivitySetArg(procb,&j,UNKNOWN);
   ActivitySchedTime(procb,0.1,INDEPENDENT);
   procc = NewProcess("C",ProcC,DEFAULTSTK);
   ActivitySchedTime(procc,0.2,INDEPENDENT);
/* ActivitySchedTime(procc,0.0,INDEPENDENT);     Uncomment to test error trap */
   ProcessDelay(1.0);

   TracePrint("\nTesting the operation ActivitySchedTime(,BLOCK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,10);
   ActivitySetArg(eva,&j,UNKNOWN);
   ActivitySchedTime(eva,0.1,INDEPENDENT);
/* ActivitySchedTime(eva,0.0,INDEPENDENT);     Uncomment test error trap */
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySetArg(evb,&i,UNKNOWN);
   ActivitySchedTime(evb,0.0,INDEPENDENT);
   ProcessDelay(0.0);
   evb = NewEvent("B",EvB,NODELETE,0);
   ActivitySchedTime(evb,0.0,INDEPENDENT);
   ProcessDelay(0.8);

   TracePrint("\nTesting the operation ActivitySchedSema(INDEPENDENT) for processes\n\n");

   SemaphoreInit(sem,0);
   proca = NewProcess("A",ProcA,DEFAULTSTK);
   procb = NewProcess("B",ProcB,DEFAULTSTK);
   procc = NewProcess("C",ProcC,DEFAULTSTK);
   ActivitySetArg(proca,&j,UNKNOWN);
   ActivitySetArg(procb,&i,UNKNOWN);
   ActivitySchedSema(proca,sem,INDEPENDENT);
   ActivitySchedSema(procb,sem,INDEPENDENT);
   ActivitySchedSema(procc,sem,INDEPENDENT);
   ProcessDelay(1.0);
   SemaphoreSignal(sem);
   SemaphoreSignal(sem);
   ProcessDelay(1.0);
   SemaphoreSignal(sem);
   ProcessDelay(1.0);

   TracePrint("\nTesting the operation ActivitySchedSema(INDEPENDENT) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,5);
   ActivitySetArg(eva,&i,UNKNOWN);
   ActivitySetArg(evb,&j,UNKNOWN);
   ActivitySchedSema(eva,sem,INDEPENDENT);
   ActivitySchedSema(evb,sem,INDEPENDENT);
   ProcessDelay(1.0);
/* ActivitySchedSema(evb,sem,INDEPENDENT);   Uncomment to test error trap */
   SemaphoreSignal(sem);
   ProcessDelay(0.1);
   SemaphoreSignal(sem);
   ProcessDelay(0.1);
   ActivitySchedSema(evb,sem,INDEPENDENT);
   SemaphoreSignal(sem);
   SemaphoreSignal(sem);
   ProcessDelay(0.9);

   TracePrint("\nTesting the operation ActivitySchedFlag(INDEPENDENT) for processes\n\n");

   proca = NewProcess("A",ProcA,DEFAULTSTK);
   procb = NewProcess("B",ProcB,DEFAULTSTK);
   procc = NewProcess("C",ProcC,DEFAULTSTK);
   FlagSet(sev);
   ActivitySetArg(proca,&j,UNKNOWN);
   ActivitySetArg(procb,&i,UNKNOWN);
   ActivitySchedFlag(proca,sev,INDEPENDENT);
   ActivitySchedFlag(procb,sev,INDEPENDENT);
   ActivitySchedFlag(procc,sev,INDEPENDENT);
   ProcessDelay(1.0);
   FlagSet(sev);
   ProcessDelay(1.0);

   TracePrint("\nTesting the operation ActivitySchedFlag(INDEPENDENT) for events\n\n");

   FlagSet(sev);
   eva = NewEvent("A",EvA,DELETE,5);
   ActivitySetArg(eva,&i,UNKNOWN);
   ActivitySetArg(evb,&j,UNKNOWN);
   ActivitySchedFlag(eva,sev,INDEPENDENT);
   ActivitySchedFlag(evb,sev,INDEPENDENT);
   ProcessDelay(1.0);
/* ActivitySchedFlag(evb,sev,INDEPENDENT);   Uncomment to test error trap */
   FlagSet(sev);
   ProcessDelay(0.1);
   ActivitySchedFlag(evb,sev,INDEPENDENT);
   FlagSet(sev);
   ProcessDelay(0.9);

   TracePrint("\nTesting the operation ActivitySchedCond(INDEPENDENT) for processes\n\n");

   proca = NewProcess("A",ProcA,DEFAULTSTK);
   procb = NewProcess("B",ProcB,DEFAULTSTK);
   procc = NewProcess("C",ProcC,DEFAULTSTK);
   ActivitySetArg(proca,&j,UNKNOWN);
   ActivitySetArg(procb,&i,UNKNOWN);
   ActivitySchedCond(proca,con,INDEPENDENT);
   ActivitySchedCond(procb,con,INDEPENDENT);
   Iset(iv,1);
   ActivitySchedCond(procc,con,INDEPENDENT);
   Iset(iv,0);
   ProcessDelay(0.1);
   Iset(iv,2);
   ProcessDelay(1.0);
   Iset(iv,0);

   TracePrint("\nTesting the operation ActivitySchedCond(INDEPENDENT) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,1);
   ActivitySetArg(eva,&i,UNKNOWN);
   ActivitySetArg(evb,&j,UNKNOWN);
   ActivitySchedCond(eva,con,INDEPENDENT);
   ActivitySchedCond(evb,con,INDEPENDENT);
   ProcessDelay(0.1);
   Iset(iv,222);
   ProcessDelay(0.1);
   ActivitySchedCond(evb,con,INDEPENDENT);
   ProcessDelay(0.9);
}

void UMain2()
{
   PROCESS *proca;
   PROCESS *procb;
   PROCESS *procc;
   EVENT *eva;
   EVENT *evb;

   int i = 100;
   int j = 200;

   printf("\nTesting the operation Schedule(float,BLOCK) for processes\n\n");
   
   proca = NewProcess("A",ProcA,DEFAULTSTK);
/* ActivitySchedTime(proca,-1.0,INDEPENDENT);   Uncomment to test error trap */
   ActivitySetArg(proca,&i,UNKNOWN);
   ActivitySchedTime(proca,0.0,BLOCK);
   procb = NewProcess("B",ProcB,DEFAULTSTK);
   ActivitySetArg(procb,&j,UNKNOWN);
   ActivitySchedTime(procb,0.1,INDEPENDENT);
   procc = NewProcess("C",ProcC,DEFAULTSTK);
   ActivitySchedTime(procc,0.2,BLOCK);
/* ActivitySchedTime(procc,0.0,INDEPENDENT);     Uncomment to test error trap */
   ProcessDelay(1.0);

   printf("\nTesting the operation Schedule(float,BLOCK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,10);
   ActivitySetArg(eva,&j,UNKNOWN);
   ActivitySchedTime(eva,0.1,BLOCK);
/* ActivitySchedTime(eva,0.0,INDEPENDENT);     Uncomment test error trap */
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySetArg(evb,&i,UNKNOWN);
   ActivitySchedTime(evb,0.0,BLOCK);
   ProcessDelay(0.0);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedTime(evb,0.0,INDEPENDENT);
   ProcessDelay(0.8);

   printf("\nTesting the operation Schedule(SEMAPHORE*,BLOCK) for processes\n\n");

   SemaphoreInit(sem,0);
   proca = NewProcess("A",ProcA,DEFAULTSTK);
   procb = NewProcess("B",ProcB,DEFAULTSTK); 
   procc = NewProcess("C",ProcC,DEFAULTSTK);
   ActivitySetArg(proca,&j,UNKNOWN);
   ActivitySetArg(procb,&i,UNKNOWN);
   ActivitySchedTime(evsig1,0.1,INDEPENDENT);
   ActivitySchedTime(evsig2,0.2,INDEPENDENT);
   ActivitySchedTime(evsig3,0.3,INDEPENDENT);
   ActivitySchedSema(proca,sem,BLOCK);
   ActivitySchedSema(procb,sem,BLOCK);
   ActivitySchedSema(procc,sem,BLOCK);
   ProcessDelay(1.0);

   printf("\nTesting the operation Schedule(SEMAPHORE*,BLOCK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,5);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySetArg(eva,&i,UNKNOWN);
   ActivitySetArg(evb,&j,UNKNOWN);
   ActivitySchedTime(evsig1,0.1,INDEPENDENT);
   ActivitySchedTime(evsig2,0.2,INDEPENDENT);
   ActivitySchedSema(eva,sem,BLOCK);
   ActivitySchedSema(evb,sem,BLOCK);
   ProcessDelay(1.0);
   ActivitySchedTime(evsig3,0.0,INDEPENDENT);
/* ActivitySchedSema(evb,sem,INDEPENDENT);   Uncomment to test error trap */
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedSema(evb,sem,BLOCK);
   ProcessDelay(0.9);

   printf("\nTesting the operation Schedule(FLAG*,BLOCK) for processes\n\n");

   proca = NewProcess("A",ProcA,DEFAULTSTK);
   procb = NewProcess("B",ProcB,DEFAULTSTK); 
   procc = NewProcess("C",ProcC,DEFAULTSTK);
   ActivitySchedTime(evset1,2.0,INDEPENDENT);
   ActivitySchedTime(evset3,1.0,INDEPENDENT);
   ActivitySetArg(proca,&j,UNKNOWN);
   ActivitySetArg(procb,&i,UNKNOWN);
   ActivitySchedFlag(proca,sev,BLOCK);
   ActivitySchedFlag(procb,sev,BLOCK);
   ActivitySchedTime(evset2,2.0,INDEPENDENT);
   ActivitySchedFlag(procc,sev,BLOCK);
   ProcessDelay(1.0);

   printf("\nTesting the operation Schedule(FLAG*,BLOCK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,5);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySetArg(eva,&i,UNKNOWN);
   ActivitySetArg(evb,&j,UNKNOWN);
   ActivitySchedTime(evset1,0.1,INDEPENDENT);
   ActivitySchedTime(evset2,0.2,INDEPENDENT);
   ActivitySchedFlag(eva,sev,BLOCK);
   ActivitySchedFlag(evb,sev,BLOCK);
   ActivitySchedTime(evset3,0.1,INDEPENDENT);
   ProcessDelay(1.0);
/* ActivitySchedFlag(evb,sev,INDEPENDENT);   Uncomment to test error trap */
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedTime(evset1,0.1,INDEPENDENT);
   ActivitySchedFlag(evb,sev,BLOCK);
   ProcessDelay(0.9);

   printf("\nTesting the operation Schedule(CONDITION*,BLOCK) for processes\n\n");

   proca = NewProcess("A",ProcA,DEFAULTSTK);
   procb = NewProcess("B",ProcB,DEFAULTSTK); 
   procc = NewProcess("C",ProcC,DEFAULTSTK);
   ActivitySetArg(proca,&j,UNKNOWN);
   ActivitySetArg(procb,&i,UNKNOWN);
   ActivitySchedTime(evsetsv1,0.0,INDEPENDENT);
   Iset(iv,0);
   ActivitySchedTime(evsetsv2,1.0,INDEPENDENT);
   ActivitySchedCond(proca,con,BLOCK);
   ActivitySchedCond(procb,con,BLOCK);
   ActivitySchedTime(evsetsv3,1.0,INDEPENDENT);
   ActivitySchedCond(procc,con,BLOCK);
   ProcessDelay(1.0);
   Iset(iv,0);

   printf("\nTesting the operation Schedule(CONDITION*,BLOCK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,1);
   ActivitySetArg(eva,&i,UNKNOWN);
   ActivitySetArg(eva,&j,UNKNOWN);
   ActivitySchedTime(evsetsv1,0.0,INDEPENDENT);
   ActivitySchedTime(evsetsv2,1.0,INDEPENDENT);
   ActivitySchedCond(eva,con,BLOCK);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedCond(evb,con,BLOCK);
   ProcessDelay(0.1);
   Iset(iv,0);
   ProcessDelay(0.1);
   ActivitySchedTime(evsetsv3,1.0,INDEPENDENT);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedCond(evb,con,BLOCK);
   ProcessDelay(0.9);

}

void UMain3()
{
   PROCESS *proca;
   PROCESS *procb;
   PROCESS *procc;
   PROCESS *procd;
   EVENT *eva;
   EVENT *evb;

   int i = 100;
   int j = 200;

   printf("\nTesting the operation Schedule(float,FORK) for processes\n\n");
   
   proca = NewProcess("A",ProcAx,0);
   ActivitySetArg(proca,&i,4);
   ActivitySchedTime(proca,0.0,FORK);
   procb = NewProcess("B",ProcBx,0);
   ActivitySetArg(procb,&j,4);
   ActivitySchedTime(procb,0.1,FORK);
   procc = NewProcess("C",ProcCx,0);
   ActivitySchedTime(procc,0.2,FORK);
/* ActivitySchedTime(procc,0.0,FORK);     Uncomment to test error trap */
   ProcessJoin();

   printf("\nTesting the operation Schedule(float,FORK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,10);
   ActivitySetArg(eva,&j,4);
   ActivitySchedTime(eva,0.0,FORK);
/* ActivitySchedTime(eva,0.0,FORK);     Uncomment test error trap */
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySetArg(evb,&i,4);
   ActivitySchedTime(evb,0.1,FORK);
   ProcessJoin();
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedTime(evb,0.0,FORK);;
   ProcessDelay(1.0);

   printf("\nTesting the operation Schedule(SEMAPHORE*,FORK) for processes\n\n");

   proca = NewProcess("A",ProcAx,0);
   procb = NewProcess("B",ProcBx,0); 
   procc = NewProcess("C",ProcCx,0);
   ActivitySetArg(proca,&j,4);
   ActivitySetArg(procb,&i,4);
   ActivitySchedSema(proca,sem,FORK);
   ActivitySchedSema(procb,sem,FORK);
   ActivitySchedSema(procc,sem,FORK);
   ProcessDelay(1.0);
   SemaphoreSignal(sem);
   SemaphoreSignal(sem);
   ProcessDelay(1.0);
   SemaphoreSignal(sem);
   ProcessJoin();

   printf("\nTesting the operation Schedule(SEMAPHORE*,FORK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,5);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySetArg(eva,&i,4);
   ActivitySetArg(evb,&j,4);
   ActivitySchedSema(eva,sem,FORK);
   ActivitySchedSema(evb,sem,FORK);
   ProcessDelay(1.0);
/* ActivitySchedSema(evb,sem,FORK);   Uncomment to test error trap */
   SemaphoreSignal(sem);
   ProcessDelay(0.1);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedSema(evb,sem,FORK);
   SemaphoreSignal(sem);
   SemaphoreSignal(sem);
   ProcessJoin();

   printf("\nTesting the operation Schedule(FLAG*,FORK) for processes\n\n");

   proca = NewProcess("A",ProcAx,0);
   procb = NewProcess("B",ProcBx,0); 
   procc = NewProcess("C",ProcCx,0);
   FlagSet(sev);
   ActivitySetArg(proca,&j,4);
   ActivitySetArg(procb,&i,4);
   ActivitySchedFlag(proca,sev,FORK);
   ActivitySchedFlag(procb,sev,FORK);
   ActivitySchedFlag(procc,sev,FORK);
   ProcessDelay(1.0);
   FlagSet(sev);
   FlagSet(sev);
   ProcessJoin();

   printf("\nTesting the operation Schedule(FLAG*,FORK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,5);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySetArg(eva,&i,4);
   ActivitySetArg(evb,&j,4);
   ActivitySchedFlag(eva,sev,FORK);
   ActivitySchedFlag(evb,sev,FORK);
   ProcessDelay(1.0);
/* ActivitySchedFlag(evb,sev,FORK);   Uncomment to test error trap */
   FlagSet(sev);
   ProcessDelay(0.1);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedFlag(evb,sev,FORK);
   FlagSet(sev);
   FlagSet(sev);
   ProcessJoin();

   printf("\nTesting the operation Schedule(CONDITION*,FORK) for processes\n\n");

   proca = NewProcess("A",ProcAx,0);
   procb = NewProcess("B",ProcBx,0); 
   procc = NewProcess("C",ProcCx,0);
   ActivitySetArg(proca,&j,4);
   ActivitySetArg(procb,&i,4);
   ActivitySchedCond(proca,con,FORK);
   ActivitySchedCond(procb,con,FORK);
   Iset(iv,1);
   ActivitySchedCond(procc,con,FORK);
   Iset(iv,0);
   ProcessDelay(0.1);
   Iset(iv,2);
   ProcessDelay(1.0);
   Iset(iv,0);
   ProcessJoin();

   printf("\nTesting the operation Schedule(CONDITION*,FORK) for events\n\n");

   eva = NewEvent("A",EvA,DELETE,1);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySetArg(eva,&i,4);
   ActivitySetArg(evb,&j,4);
   ActivitySchedCond(eva,con,FORK);
   ActivitySchedCond(evb,con,FORK);
   ProcessDelay(1.0);
   Iset(iv,222);
   ProcessDelay(0.1);
   evb = NewEvent("B",EvB,DELETE,0);
   ActivitySchedCond(evb,con,FORK);
   ProcessDelay(0.9);
   ProcessJoin();

}

void UserMain(argc,argv)
int argc;
char* argv[];
{
   PROCESS *usermain;

   if (argc > 1) TraceLevel = atoi(argv[1]);

   sem = NewSemaphore("sem",1);
   sev = NewFlag("sev");
   iv = NewIvar("iv",0);
   con = NewCondition("con",contest,iv,NULL);

   usermain = NewProcess("usermain",UMain1,DEFAULTSTK);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   DriverReset();

   sem = NewSemaphore("sem",1);
   sev = NewFlag("sev");
   evset1 = NewEvent("evset",EvSet,NODELETE,0);
   evset2 = NewEvent("evset",EvSet,NODELETE,0);
   evset3 = NewEvent("evset",EvSet,NODELETE,0);
   evsig1 = NewEvent("evsig",EvSignal,NODELETE,0);
   evsig2 = NewEvent("evsig",EvSignal,NODELETE,0);
   evsig3 = NewEvent("evsig",EvSignal,NODELETE,0);
   evsetsv1 = NewEvent("evsetsv",EvSetSV,NODELETE,0);
   evsetsv2 = NewEvent("evsetsv",EvSetSV,NODELETE,0);
   evsetsv3 = NewEvent("evsetsv",EvSetSV,NODELETE,0);
   iv = NewIvar("iv",0);
   con = NewCondition("con",contest,iv,NULL);

   usermain = NewProcess("usermain",UMain2,DEFAULTSTK);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   DriverReset();

   sem = NewSemaphore("sem",1);
   sev = NewFlag("sev");
   iv = NewIvar("iv",0);
   con = NewCondition("con",contest,iv,NULL);

   usermain = NewProcess("usermain",UMain3,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);
}

