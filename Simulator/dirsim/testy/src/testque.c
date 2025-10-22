#include "sim.h"

SEMAPHORE *S1;
SEMAPHORE *S2;
SEMAPHORE *S3;
SEMAPHORE *S4;

FLAG *F1;
FLAG *F2;
FLAG *F3;
FLAG *F4;

IVAR *A;
IVAR *B;

int C1test(argptr,argsize)
char *argptr;
int argsize;
{
/*   TracePrint("%s, size = %d\n",argptr,argsize);*/
   return Ival(A) == Ival(B);
}

CONDITION *C1;

int TGT4() { return Fval(SIMTIME) >= 4.0; }
CONDITION *C2;

int TGT11() { return Fval(SIMTIME) > 11.0; }
CONDITION *C3;

int TGT20() { return (Fval(SIMTIME) > 20.0 && Ival(A) == 20); }
CONDITION *C4;

SEMAPHORE *s;
BARRIER   *t;
FLAG      *u;

void Sub1()
{
   SemaphoreWait(s);
   ProcessDelay(0.0);
   ProcessDelay(0.0);
   SemaphoreSignal(s);
   BarrierSync(t);

   ProcessDelay(1.0);

   FlagWait(u);
   FlagWait(u);
}

void Sub2()
{
   SemaphoreWait(s);
   ProcessDelay(0.0);
   SemaphoreSignal(s);
   BarrierSync(t);

   ProcessDelay(1.0);

   FlagWait(u);
}

void Sub3()
{
   SemaphoreWait(s);
   ProcessDelay(0.0);
   SemaphoreSignal(s);
   BarrierSync(t);

   ProcessDelay(1.0);

   FlagWait(u);
   FlagWait(u);
   FlagWait(u);
}

void Sub4()
{
   SemaphoreWait(s);
   ProcessDelay(0.0);
   SemaphoreSignal(s);
   BarrierSync(t);

   ProcessDelay(1.0);

   FlagWait(u);
}
void Sub5()
{
   SemaphoreWait(s);
   ProcessDelay(0.0);
   SemaphoreSignal(s);
   BarrierSync(t);

   ProcessDelay(1.0);

   FlagWait(u);
   FlagWait(u);
}

void Sub6()
{
   SemaphoreWait(s);
   ProcessDelay(0.0);
   SemaphoreSignal(s);
   BarrierSync(t);
}


void Proc1S()
{
/*   TracePrint("Number of activities waiting at semaphore S1 = %d\n",SemaphoreWaiting(S1));*/
   SemaphoreWait(S1);
   SemaphoreWait(S1);
   SemaphoreWait(S4);
   SemaphoreWait(S1);
   ProcessDelay(5.0);
   SemaphoreWait(S1);
}

void Proc2S()
{
/*   TracePrint("Number of activities waiting at semaphore S1 = %d\n",SemaphoreWaiting(S1));*/
   SemaphoreWait(S1);
   SemaphoreWait(S2);
   SemaphoreWait(S4);
   SemaphoreWait(S2);
   ProcessDelay(5.0);
   SemaphoreWait(S1);
}

void Proc3S()
{
/*   TracePrint("Number of activities waiting at semaphore S1 = %d\n",SemaphoreWaiting(S1));*/
   SemaphoreWait(S1);
   SemaphoreWait(S3);
   SemaphoreWait(S4);
   SemaphoreWait(S3);
   ProcessDelay(5.0);
   SemaphoreWait(S1);
}   

void Proc1F()
{
/*   TracePrint("Number of activities waiting at flag F1 = %d\n",FlagWaiting(F1));*/
   FlagWait(F1);
   FlagWait(F1);
   FlagWait(F4);
   FlagWait(F1);
   ProcessDelay(5.0);
   FlagWait(F1);
}

void Proc2F()
{
/*   TracePrint("Number of activities waiting at flag F1 = %d\n",FlagWaiting(F1));*/
   FlagWait(F1);
   FlagWait(F2);
   FlagWait(F4);
   FlagWait(F2);
   ProcessDelay(5.0);
   FlagWait(F1);
}

void Proc3F()
{
/*   TracePrint("Number of activities waiting at flag F1 = %d\n",FlagWaiting(F1));*/
   FlagWait(F1);
   FlagWait(F3);
   FlagWait(F4);
   FlagWait(F3);
   ProcessDelay(5.0);
   FlagWait(F1);
}   

void Proc1C()
{
   ConditionWait(C1);
   ConditionWait(C1);
   ProcessDelay(3.0);
   ConditionWait(C2);
   ConditionWait(C3);
   ConditionWait(C4);
}

void Proc2C()
{
   ConditionWait(C1);
   ConditionWait(C4);
}

void Proc3C()
{
   ConditionWait(C1);
   ConditionWait(C3);
   ConditionWait(C2);
}   


void UMainS()
{
    PROCESS *proc1;
    PROCESS *proc2;
    PROCESS *proc3;

    S1 = NewSemaphore("S1",0);
    S2 = NewSemaphore("S2",0);
    S3 = NewSemaphore("S3",0);
    S4 = NewSemaphore("S4",0);
    QueueCollectStats(S1,LENGTH,MEANS,HIST,4,0.0,4.0);
    QueueCollectStats(S1,TIME,MEANS,HIST,6,1.0,7.0);

    SemaphoreSet(S1);
    SemaphoreSet(S2);
    proc1 = NewProcess("proc1",Proc1S,0);
    proc2 = NewProcess("proc2",Proc2S,0);
    proc3 = NewProcess("proc3",Proc3S,0);
    ActivitySchedTime(proc1,0.0,INDEPENDENT);
    ActivitySchedTime(proc2,0.0,INDEPENDENT);
    ActivitySchedTime(proc3,0.0,INDEPENDENT);
    ProcessDelay(1.0);      /* SimTime = 1.0 */
/*    TracePrint("Number of activities waiting at semaphore S1 = %d\n",SemaphoreWaiting(S1));*/
    SemaphoreSet(S1);
/*    TracePrint("Number of activities waiting at semaphore S1 = %d\n",SemaphoreWaiting(S1));*/
    ProcessDelay(1.0);      /* SimTime = 2.0 */
    SemaphoreSet(S2);
    ProcessDelay(1.0);      /* SimTime = 3.0 */
    SemaphoreSet(S1);
    ProcessDelay(1.0);      /* SimTime = 4.0 */
    SemaphoreSet(S3);
    ProcessDelay(1.0);      /* SimTime = 5.0 */
    SemaphoreSet(S4);
    ProcessDelay(1.0);      /* SimTime = 6.0 */
    SemaphoreSet(S2);
    SemaphoreSet(S1);
    SemaphoreSet(S2);
/*    TracePrint("Number of activities waiting at semaphore S1 = %d\n",SemaphoreWaiting(S1));*/
    SemaphoreSet(S1);
/*    TracePrint("Number of activities waiting at semaphore S1 = %d\n",SemaphoreWaiting(S1));*/
    SemaphoreSet(S3);
    SemaphoreSet(S3);
    SemaphoreSet(S3);
    ProcessDelay(1.0);      /* SimTime = 7.0 */
    SemaphoreSet(S1);
    SemaphoreSet(S3);
    SemaphoreSet(S3);
    SemaphoreSet(S2);    
    SemaphoreSet(S3);
    ProcessDelay(1.0);      /* SimTime = 8.0 */

    StatrecReport(QueueStatPtr(S1,LENGTH));
    StatrecReport(QueueStatPtr(S1,TIME));
}

void UMainF()
{
    PROCESS *proc1;
    PROCESS *proc2;
    PROCESS *proc3;

    F1 = NewFlag("F1");
    F2 = NewFlag("F2");
    F3 = NewFlag("F3");
    F4 = NewFlag("F4");
    QueueCollectStats(F1,LENGTH,MEANS,HIST,4,0.0,4.0);
    QueueCollectStats(F1,TIME,MEANS,HIST,6,1.0,7.0);

    proc1 = NewProcess("proc1",Proc1F,0);
    proc2 = NewProcess("proc2",Proc2F,0);
    proc3 = NewProcess("proc3",Proc3F,0);
    ActivitySchedTime(proc1,0.0,INDEPENDENT);
    ActivitySchedTime(proc2,0.0,INDEPENDENT);
    ActivitySchedTime(proc3,0.0,INDEPENDENT);
    ProcessDelay(1.0);      /* SimTime = 1.0 */
/*    TracePrint("Number of activities waiting at flag F1 = %d\n",FlagWaiting(F1));*/
    FlagSet(F1);
/*    TracePrint("Number of activities waiting at flag F1 = %d\n",FlagWaiting(F1));*/
    ProcessDelay(1.0);      /* SimTime = 2.0 */
    FlagSet(F2);
    ProcessDelay(1.0);      /* SimTime = 3.0 */
    FlagSet(F1);
    ProcessDelay(1.0);      /* SimTime = 4.0 */
    FlagSet(F3);
    ProcessDelay(1.0);      /* SimTime = 5.0 */
    FlagRelease(F4);
    FlagSet(F2);
    FlagSet(F1);
    FlagRelease(F2);
    ProcessDelay(1.0);      /* SimTime = 6.0 */
    FlagRelease(F1);
    FlagRelease(F2);
    FlagRelease(F3);
    FlagSet(F1);
    FlagSet(F1);
    FlagRelease(F1);
    FlagRelease(F1);
    ProcessDelay(6.0);      /* SimTime = 7.0 */
    FlagSet(F1);
    FlagSet(F3);
    FlagSet(F3);
    FlagRelease(F3);    
    FlagRelease(F3);
    ProcessDelay(1.0);

    StatrecReport(QueueStatPtr(F1,LENGTH));
    StatrecReport(QueueStatPtr(F1,TIME));
}

void UMainC()
{
    PROCESS *proc1;
    PROCESS *proc2;
    PROCESS *proc3;

    A = NewIvar("A",0);
    B = NewIvar("B",0);

    C1 = NewCondition("C1",C1test,A,B,NULL,"Argument for condition C1",30);
    C2 = NewCondition("C2",TGT4,SIMTIME,NULL);
    C3 = NewCondition("C3",TGT11,SIMTIME,NULL);
    C4 = NewCondition("C4",TGT20,SIMTIME,A,NULL);
    QueueCollectStats(C1,LENGTH,MEANS,HIST,4,0.0,4.0);
    QueueCollectStats(C1,TIME,MEANS,HIST,2,0.0,2.0);

/*    TracePrint("State of C1 = %d\n",ConditionState(C1));
    TracePrint("State of C2 = %d\n",ConditionState(C2));
    TracePrint("State of C3 = %d\n",ConditionState(C3));
    TracePrint("State of C4 = %d\n",ConditionState(C4));
*/
    Iset(A,1);
    Iset(B,2);
    ProcessDelay(0.1);

    proc1 = NewProcess("proc1",Proc1C,0);
    proc2 = NewProcess("proc2",Proc2C,0);
    proc3 = NewProcess("proc3",Proc3C,0);
    ActivitySchedTime(proc1,0.0,INDEPENDENT);
    ActivitySchedTime(proc2,0.0,INDEPENDENT);
    ActivitySchedTime(proc3,0.0,INDEPENDENT);
    ProcessDelay(0.9);
/*    TracePrint("State of C1 = %d\n",ConditionState(C1));*/
    Iset(A,Ival(B) + Ival(B) - Ival(A) + 6 - Ival(B));
    Iset(B,Ival(A));
    ConditionSetArg(C1,"New Argsize is ",16);
    ProcessDelay(1.0);
/*    TracePrint("State of C1 = %d\n",ConditionState(C1));*/
    Iset(B,0);
    ProcessDelay(1.0);
/*    TracePrint("State of C1 = %d\n",ConditionState(C1));*/
    ProcessDelay(5.0);
    ProcessDelay(2.0);
    Iset(A,20);
    ProcessDelay(6.0);
    ProcessDelay(6.0);

    StatrecReport(QueueStatPtr(C1,LENGTH));
    StatrecReport(QueueStatPtr(C1,TIME));
}

void UMainY()
{
   int i;
   PROCESS *sub1;
   PROCESS *sub2;
   PROCESS *sub3;
   PROCESS *sub4;
   PROCESS *sub5;
   PROCESS *sub6;

   sub1 = NewProcess("sub1",Sub1,0);
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

   TracePrint("\nTesting the Wait() and Signal() operations for semaphores ");
   TracePrint("and Sync() for barriers\n\n");

   BarrierSync(t);
   BarrierInit(t,4);
   ProcessDelay(1.0);   

   TracePrint("\nTesting the operation Set() for processes\n\n");

   FlagSet(u);
   FlagRelease(u);
   ProcessDelay(1.0);
   i = FlagSet(u);
/*   TracePrint("%d processes released\n",i);*/
   ProcessDelay(1.0);
   FlagRelease(u);
   FlagRelease(u);
   FlagSet(u);
   ProcessDelay(1.0);

   ProcessJoin();
}


void UserMain(argc,argv)
int argc;
char *argv[];
{
   PROCESS *usermain;

   if (argc > 1) TraceLevel = atoi(argv[1]);

   TracePrint("\nTesting SEMAPHORES\n\n");

   usermain = NewProcess("usermain",UMainS,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   DriverReset();
   TracePrint("\nTesting FLAGS\n\n");

   usermain = NewProcess("usermain",UMainF,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   DriverReset();
   TracePrint("\nTesting CONDITIONS\n\n");

   usermain = NewProcess("usermain",UMainC,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);

   DriverReset();
   TracePrint("\nTesting All Three\n\n");

   s = NewSemaphore("sem",3);
   t = NewBarrier("bar",7);
   u = NewFlag("flg");

   usermain = NewProcess("usermain",UMainY,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);
}


