#include "sim.h"
 
int i;

void UMain()
{
   for(;;) ProcessDelay(YacRand());
}

void UserMain(argc,argv)
int argc;
char *argv[];
{
   PROCESS *usermain;

   if (argc > 1) TraceLevel = atoi(argv[1]);
   
   usermain = NewProcess("usermain1",UMain,0);
   ActivitySchedTime(usermain,1.0,INDEPENDENT);
   DriverRun(2.0);
}


