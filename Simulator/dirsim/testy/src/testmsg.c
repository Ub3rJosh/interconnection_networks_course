#include "sim.h"

PROCESS *p1;
PROCESS *p2;
PROCESS *p3;
BARRIER *s2;
PROCESS *pr;
EVENT   *ev;

void Proc1()
{
   char rbuf[100];
   int rval;
   int chkval;

   BarrierInit(s2,3);

   TracePrint("\nStarting Test1\n\n");

/* Test1: Send message and wait for it to come back */

   ProcessSendMsg(p2,"data1",6,NOBLOCK,0);
   printf("Proc1 sending message %s to Proc2\n","data1");

   chkval = ProcessCheckMsg(ANYTYPE,ANYSENDER);
   rval = ProcessReceiveMsg(rbuf,10,NOBLOCK,ANYTYPE,ANYSENDER);
   while(chkval == -1) {
      ProcessDelay(0.7);
      chkval = ProcessCheckMsg(ANYTYPE,ANYSENDER);
      rval = ProcessReceiveMsg(rbuf,10,NOBLOCK,ANYTYPE,ANYSENDER);
   }
   printf("Proc1 receives message %s\n",rbuf);
   printf("Barrier Waiting = %d\n",BarrierWaiting(s2));
   printf("Barrier Needed = %d\n",BarrierNeeded(s2));
   BarrierSync(s2);
   printf("Barrier Waiting = %d\n",BarrierWaiting(s2));
   printf("Barrier Needed = %d\n",BarrierNeeded(s2));

   printf("\nTest1 completed; Starting Test2\n\n");

/* Test2: Check types */

   ProcessSendMsg(p2,"test2.1",8,NOBLOCK,1);
   ProcessSendMsg(p2,"test2.2",8,NOBLOCK,2);
   ProcessSendMsg(p2,"test2.3",8,BLOCK,3);
   ProcessDelay(1.0);
   rval = ProcessReceiveMsg(rbuf,20,BLOCK,ANYTYPE,ANYSENDER); 
   BarrierSync(s2);

   printf("\nTest2 completed; Starting Test3\n\n");  

/* Test3: Null Messages */

   ProcessSendMsg(p2,"test2.1",0,NOBLOCK,1);
   ProcessSendMsg(p2,NULL,8,NOBLOCK,2);
   ProcessSendMsg(p2,NULL,0,BLOCK,3);
   BarrierSync(s2);
}

void Proc2()
{
   char rbuf[100];
   int rval;
   
/* Test1: Pass on incoming carrier */

   rval = ProcessReceiveMsg(rbuf,20,NOBLOCK,0,p3);
   printf("Proc2 returns from nonblocking receive with retval %d\n",rval);
   rval = ProcessReceiveMsg(rbuf,20,BLOCK,0,p1);
   printf("Proc2 receives the %d characters %s\n",rval,rbuf);
   ProcessSendMsg(p3,rbuf,6,NOBLOCK,0);
   printf("Proc2 sending message %s to Proc3\n",rbuf);
   BarrierSync(s2);


/* Test2: Check types */

   rval = ProcessCheckMsg(3,ANYSENDER);
   printf("%d characters in waiting message\n",rval);
   rval = ProcessReceiveMsg(rbuf,0,BLOCK,3,ANYSENDER);
   rval = ProcessCheckMsg(3,ANYSENDER);
   printf("%d characters in waiting message\n",rval);
   rval = ProcessReceiveMsg(rbuf,4,BLOCK,3,ANYSENDER);
   rval = ProcessCheckMsg(3,ANYSENDER);
   printf("%d characters in waiting message\n",rval);
   rval = ProcessReceiveMsg(rbuf,20,BLOCK,3,ANYSENDER);
   printf("Bytes received = %d\n",rval);
   rval = ProcessReceiveMsg(rbuf,20,BLOCK,1,p1);
   rval = ProcessReceiveMsg(rbuf,20,BLOCK,2,ANYSENDER);
   BarrierSync(s2);

/* Test3: Null messages */

   rval = ProcessReceiveMsg(rbuf,20,BLOCK,3,ANYSENDER);
   rval = ProcessReceiveMsg(NULL,20,BLOCK,1,p1);
   rval = ProcessReceiveMsg(rbuf,0,BLOCK,2,ANYSENDER);
   BarrierSync(s2);
}

void Proc3()
{
   char rbuf[100];
   int rval;

/* Test1: Pass on incoming carrier */

   rval = ProcessReceiveMsg(rbuf,8,BLOCK,0,ANYSENDER);
   printf("Proc3 receives the %d characters %s\n",rval,rbuf);
   ProcessDelay(1.0);
   ProcessSendMsg(p1,rbuf,10,NOBLOCK,0);
   printf("Proc3 sending message %s to Proc1\n",rbuf);
   BarrierSync(s2);


/* Test 2: Send to sender */

   ProcessDelay(2.0);
   ProcessSendMsg(p3,"msg3",5,NOBLOCK,0);
   rval = ProcessReceiveMsg(rbuf,20,BLOCK,0,ANYSENDER);
   ProcessSendMsg(p1,"msg3.2",7,NOBLOCK,0);
   BarrierSync(s2);

   BarrierSync(s2);
}

void MsgEvnt()
{
   ProcessSendMsg(pr,"Message",8,NOBLOCK,1);
}

void MsgProc()
{
   char rbuf[20];
   
   ProcessReceiveMsg(rbuf,8,BLOCK,ANYTYPE,ANYSENDER);
   printf("First message recieved: %s\n",rbuf);
   ActivitySchedTime(ev,0.0,INDEPENDENT);
   ProcessDelay(1.0);

   ProcessReceiveMsg(rbuf,8,BLOCK,ANYTYPE,ev);
   printf("Second message recieved: %s\n",rbuf);
   ActivitySchedTime(ev,0.0,INDEPENDENT);
   ProcessDelay(1.0);

   ProcessReceiveMsg(rbuf,8,BLOCK,1,ANYSENDER);
   printf("Third message recieved: %s\n",rbuf);
   ActivitySchedTime(ev,0.0,INDEPENDENT);
   ProcessDelay(1.0);

}

void UMain()
{
   char rbuf[100];
   int rval; 

   p1 = NewProcess("proc1",Proc1,0);
   ActivitySchedTime(p1,0.0,FORK);
   p2 = NewProcess("proc2",Proc2,0);
   ActivitySchedTime(p2,0.0,FORK);
   p3 = NewProcess("proc3",Proc3,0);
   ActivitySchedTime(p3,0.0,FORK);
   s2 = NewBarrier("s2",2);
   ProcessJoin();

   printf("\nTest3 completed; Starting Test4\n\n");

   pr = NewProcess("msgpr",MsgProc,0);
   ev = NewEvent("msgev",MsgEvnt,NODELETE,0);
   ActivitySchedTime(pr,0.0,FORK);
   ActivitySchedTime(ev,0.0,INDEPENDENT);
   ProcessJoin();
}

void UserMain(argc, argv)
int argc;
char* argv[];
{
   PROCESS *usermain;
   if (argc > 1) TraceLevel = atoi(argv[1]);
   
   usermain = NewProcess("usermain",UMain,DEFAULTSTK);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);
}

