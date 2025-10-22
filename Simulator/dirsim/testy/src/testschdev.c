#include "sim.h"

int i;

void evbody1()
{
   printf("The event occurs for the %dth time\n",i+1);
   if (i < 10) {
      ActivitySchedTime(ME,1.0,INDEPENDENT);
      i++;
   }
}


void UMain()
{
   int i;
   EVENT *ev1;

   ev1 = NewEvent("ev1",evbody1,NODELETE,0);
   ActivitySchedTime(ev1,0.0,INDEPENDENT);
}

void UserMain(argc,argv)
int argc;
char *argv[];
{
   PROCESS *usermain;

   if (argc > 1) TraceLevel = atoi(argv[1]);
   
   usermain = NewProcess("usermain1",UMain,0);
   ActivitySchedTime(usermain,0.0,INDEPENDENT);
   DriverRun(0.0);
}


