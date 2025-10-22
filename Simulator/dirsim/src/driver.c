    /*****************************************************************************/
    /*****************************************************************************/
    /**                    Copyright 1993 by Rice University                    **/
    /**                              Houston, Texas                             **/
    /**                                                                         **/
    /**                           All Rights Reserved                           **/
    /**                                                                         **/
    /**    Permission to use, copy, modify, and distribute this software and    **/
    /**    its documentation  for  any research  purpose and  without fee is    **/
    /**    hereby granted, provided that the  above copyright  notice appear    **/
    /**    in all  copies and  that both  that  copyright  notice  and  this    **/
    /**    permission  notice appear in supporting  documentation,  and that    **/
    /**    the name of Rice University not be  used  in  advertising  or  in    **/
    /**    publicity pertaining to  distribution  of  the  software  without    **/
    /**    specific, written prior permission.  The inclusion of this  soft-    **/
    /**    ware  or its  documentation in  any  commercial  product  without    **/
    /**    specific, written prior permission is prohibited.                    **/
    /**                                                                         **/
    /**    RICE  UNIVERSITY  DISCLAIMS  ALL  WARRANTIES WITH  REGARD TO THIS    **/
    /**    SOFTWARE,  INCLUDING  ALL IMPLIED WARRANTIES  OF  MERCHANTABILITY    **/
    /**    AND FITNESS.  IN NO EVENT SHALL RICE UNIVERSITY BE LIABLE FOR ANY    **/
    /**    SPECIAL, INDIRECT  OR CONSEQUENTIAL DAMAGES  OR ANY DAMAGES WHAT-    **/
    /**    SOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN    **/
    /**    ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS  ACTION, ARISING    **/
    /**    OUT OF  OR IN  CONNECTION  WITH  THE  USE  OR PERFORMANCE OF THIS    **/
    /**    SOFTWARE.                                                            **/
    /*****************************************************************************/
    /*****************************************************************************/

#include "../incl/simsys.h"
#include "../incl/tr.driver.h"

/* DBSIM includes */

#include <fcntl.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>

void UserMain();

static double SimUpTo;               /* Duration of a simulation run                  */
static int    StopFlag;              /* If != 0, Driver interrupts and returns        */

static int     YS__TrMode;           /* Parameters used for interactive control       */
static double  YS__TrTime;           /* with DBSIM                                    */
static int     YS__TrIter;
static int     YS__TrBreak;

static void YS__UpdateTime();        /* Functions used only to communicate with DBSIM */
static void YS__GetCommand();
static void YS__SendCommand();
static void YS__Quit();

/**************************************************************************************\
************************************* main() *******************************************
****************************************************************************************
**                                                                                    **
**   This is were it all starts.  Main reads command line arguments and initializes   **
**   the simulator.  It then calls the user-supplied routine UserMain.                **
**                                                                                    **
****************************************************************************************
\**************************************************************************************/

void main(argc, argv)
int argc;
char *argv[];
{
   char savechar;
   int i,j;
   int showheader = 1;
   int argdone = 0;

   /* Parse the command line arguments */

   j=0;
   if (argc > 1) {                                   /* There are some arguments      */
      savechar = *argv[j+1];                         /* Get the first one             */
      while (j+1 < argc && argdone == 0) {           /* Check its first character     */
         if (savechar == '+') {                      /* Those that begin with +       */
            savechar = *(argv[j+1]+1);               /* Get the next character        */
            if (savechar == 't') {                   /* It sets the trace level       */
               savechar = *(argv[j+1]+2);            /* There are 5 possible levels   */
               if (savechar == '1') TraceLevel = 1;
               else if (savechar == '2') TraceLevel = 2;
               else if (savechar == '3') TraceLevel = 3;
               else if (savechar == '4') TraceLevel = 4;
               else if (savechar == '5') TraceLevel = 5;
               else TraceLevel = 0;
            }
            else if (savechar == 'b')                /* Set # of bins for calque      */
               YS__EventListSetBins(atoi(argv[j+1]+2));    /* b = 1 means linear      */
            else if (savechar == 'w')                /* Set bin width for calque      */
               YS__EventListSetWidth(atof(argv[j+1]+2));
            else if (savechar == 'l')                /* Select linear event list      */
               YS__EventListSetBins(1);
            else argdone = 1;                        /* Start of user agruments       */
         }
         else if (savechar == '-') {                 /* Agrs that begin with -        */
            savechar = *(argv[j+1]+1);               /* Get the next character        */
            if (savechar == 'h') showheader = 0;     /* Suppress header               */
            else if (savechar == 'i') TraceIDs = 0;  /* Suppress trace ids            */
            else argdone = 1;                        /* Start of user arguments       */
         }
         else argdone = 1;                            /* Start of user arguments      */
         if (argdone == 0) {                          /* More commands                */
            j++;                                      /* Get the next one             */
            if (j+1 < argc) savechar = *argv[j+1];
         }
      }
      if (j > 0) {  /* Pass the remaining argurments to UserMain() */
         argv[j] = argv[0];
         for (i = 0; *(argv[0]+i) != '\0'; i++)
            *(argv[j]+i) = *(argv[0]+i);
         *(argv[j]+i) = '\0';
      }
   }

   if (!strcmp(argv[0],"YS__Interactive")) {   /* Simulation under control of DBSIM   */
      char cmd;
      int len;

      YS__interactive = 1;                      /* Remember that DBSIM is in control   */
      signal(SIGQUIT, YS__Quit);                /* Set up interrupt routine            */

      YS__TrTime = 0.00000;                     /* Time and interations for DBSIM      */
      YS__TrIter = 0;                           /* single stepping control             */

      read(SIMIO,&cmd,1);                       /* Blocking read for synchronizing    */
      if (cmd!=ACK) {                           /* with DBSIM;  must receive ACK      */
         fprintf(stderr,"Did not get initial ACK from DBSIM\n");
	 exit(1);
      }
      YS__UpdateTime(YS__TrTime);               /* Update DBSIM time                  */
      YS__SendCommand(ACK);                     /* Synchronize with DBSIM             */
      YS__GetCommand(0);                        /* Get the first DBSIM command        */
   }

   else if (showheader == 1) {                 /* Not using interactive debugger      */

#ifdef PARCSIM
     printf("\n********************************************************************************\n");
     printf("********************************************************************************\n");
     printf("**                                                                            **\n");
     printf("**                     PARCSIM  Pre-Release Version                           **\n");
     printf("**                                                                            **\n");
     printf("**            Copyright 1993 by Rice University, Houston, Texas               **\n");
     printf("**                                                                            **\n");
     printf("**        Send comments to: J. Robert Jump, ECE Dept., Rice University        **\n");
     printf("**       P.O. Box 1892, Houston, TX 77251; (713) 527-8101; jrj@rice.edu       **\n");
     printf("**                                                                            **\n");
     printf("********************************************************************************\n");
     printf("********************************************************************************\n\n");
#endif
#ifdef NETSIM
     printf("\n********************************************************************************\n");
     printf("********************************************************************************\n");
     printf("**                                                                            **\n");
     printf("**                      OPTNETSIM Version 1.0, 7/14/05                        **\n");
     printf("**                                                                            **\n");
     printf("**            Copyright 2005 by University of Arizona, Tucson, Arizona        **\n");
     printf("**                                                                            **\n");
     printf("**        Send comments to: Ahmed Louri, ECE Dept., University of Arizona     **\n");
     printf("**        Tucson, AZ 85719; (520) 621-2318; louri@ece.arizona.edu             **\n");
     printf("**                                                                            **\n");
     printf("********************************************************************************\n");
     printf("********************************************************************************\n\n");
#endif
#ifdef YACSIM
     printf("\n********************************************************************************\n");
     printf("********************************************************************************\n");
     printf("**                                                                            **\n");
     printf("**                      YACSIM Version 2.0, 3/6/93                           **\n");
     printf("**                                                                            **\n");
     printf("**            Copyright 1993 by Rice University, Houston, Texas               **\n");
     printf("**                                                                            **\n");
     printf("**        Send comments to: J. Robert Jump, ECE Dept., Rice University        **\n");
     printf("**       P.O. Box 1892, Houston, TX 77251; (713) 527-8101; jrj@rice.edu       **\n");
     printf("**                                                                            **\n");
     printf("********************************************************************************\n");
     printf("********************************************************************************\n\n");
#endif
   }

   YS__idctr = 0;                        /* Unique ID generatro                       */
   YS__ActProc = NULL;                   /* Points to currently active process        */
   YS__ActEvnt = NULL;                   /* Points to currently active event          */
   YS__Simtime = 0.0;                    /* Simulation time starts at 0               */
   StopFlag    = 0;                      /* If != 0, Driver interrupts and returns    */
   YS__Cycles = 0;                       /* Initialize PARCSIM delays                 */
   YS__CycleTime = 1.0;
   for(i=0;i<NUMDELAYS;i++) {
      YS__OSDelays[i][0] =0.0;
      YS__OSDelays[i][1] =0.0;
      YS__OSDelays[i][2] =0.0;
   }

   YS__ContextInit(25);
   YS__PoolInit(&YS__ProcPool,"ProcessPool",25,sizeof(PROCESS));
   YS__PoolInit(&YS__MsgPool,"MessagePool",100,sizeof(MESSAGE));
   YS__PoolInit(&YS__EventPool,"EventPool",25,sizeof(EVENT));
   YS__PoolInit(&YS__QueuePool,"QueuePool",4,sizeof(QUEUE));
   YS__PoolInit(&YS__SemPool,"SemaphorePool",10,sizeof(SEMAPHORE));
   YS__PoolInit(&YS__FlagPool,"FlagPool",10,sizeof(FLAG));
   YS__PoolInit(&YS__BarPool,"BarierPool",10,sizeof(BARRIER));
   YS__PoolInit(&YS__ResPool,"ResourcePool",10,sizeof(RESOURCE));
   YS__PoolInit(&YS__StvarPool,"StateVarPool",25,sizeof(STVAR));
   YS__PoolInit(&YS__CondPool,"ConditionPool",10,sizeof(CONDITION));
   YS__PoolInit(&YS__QelemPool,"QelemPool",50,sizeof(QELEM));
   YS__PoolInit(&YS__StatPool,"StatRecPool",50,sizeof(STATREC));
   YS__PoolInit(&YS__HistPool,"HistogramPool",50,DEFAULTHIST);
   YS__PoolInit(&YS__PrcrPool,"ProcessorPool",25,sizeof(PROCESSOR));
   YS__PoolInit(&YS__PktPool,"PacketPool",100,sizeof(PACKET));
   SIMTIME     = NewFvar("SimTime",YS__Simtime);  /* Fvar for simulation time         */
   YS__PendRes = YS__NewQueue("PendingResource"); /* Queue of conditions to be eval.  */
   YS__EventListInit();                           /* Initialize the event list        */

   YS__ActPrcr = YS__NewQueue("ActPrcr");         /* For PARCSIM statistics           */
   YS__TotalPrcrs = 0;
   YS__BusyPrcrs  = 0;
   YS__BusyPrcrStat = NULL;

   UserMain(argc-j,&argv[j]);                      /* Transfer to user code           */

   /* end of simulation */

   if (YS__interactive) {                          /* Using interactive debugger      */
      YS__TrTime = YS__Simtime;                    /* Send ending time to DBSIM       */
      YS__UpdateTime(YS__TrTime);
      YS__SendCommand(CLOSE);                      /* Tell DBSIM that sim is done     */
      YS__Quit();
   }

   else if (showheader == 1) {                     /* Not user interactive debugger   */
#ifdef PARCSIM
     printf("\n********************************************************************************\n");
     printf("************************ PARCSIM - Normal Termination **************************\n");
     printf("********************************************************************************\n");
     return;
#endif
#ifdef NETSIM
     printf("\n********************************************************************************\n");
     printf("*********************** OPTNETSIM - Normal Termination **************************\n");
     printf("********************************************************************************\n");
     return;
#endif
#ifdef YACSIM
     printf("\n********************************************************************************\n");
     printf("************************* YACSIM - Normal Termination **************************\n");
     printf("********************************************************************************\n");
     return;
#endif
   }
}

/**************************************************************************************\
******************************** DRIVER Operations *************************************
****************************************************************************************
**                                                                                    **
**     These routines manipulate the event list and control context switching         **
*      between the driver and the user activities.                                    **
**                                                                                    **
****************************************************************************************
\**************************************************************************************/

void YS__RdyListAppend(aptr)       /* Appends an activity onto the system ready list  */
ACTIVITY *aptr;                    /* Pointer to the activity                         */
{
   if (aptr->pp != NULL) {        /* The activity is attached to a processor          */
      YS__RscAdd(aptr,0.0);       /* Put the activity on the processors ready list    */
   }
   else {                         /* The activity is not attached to a processor      */
      aptr->time = YS__Simtime;   /* Ready list is all activities on the event list   */
      YS__EventListInsert(aptr);  /*    schedule at the current simulation time       */
      aptr->status = READY;       /* For statistics collection                        */
      if (aptr->statptr)          /* Statistics collected for activities              */
         StatrecUpdate(aptr->statptr,(double)READY,YS__Simtime);
   }
}

/**************************************************************************************/

void DriverReset()                 /* Resets the driver (Sets YS__Simtime to 0)       */
{
   STATREC *srptr;
   MESSAGE *mptr;
   PROCESS *pptr;

   if (YS__ActProc != NULL && YS__ActEvnt != NULL)
      YS__errmsg("Can not call DriverReset() from within a process or an event");

   /* Return all objects to the pools & free all malloced structures */

   for (pptr = (PROCESS*)YS__ProcPool.head;
        pptr != (PROCESS*)YS__ProcPool.middle;
        pptr = (PROCESS*)(pptr->pnxt))
           if (pptr->cxt != NULL) YS__ContextFree(pptr->cxt);
   YS__PoolReset(&YS__CxtPool);
   YS__PoolReset(&YS__StkPool);
   YS__PoolReset(&YS__ProcPool);
   for (mptr = (MESSAGE*)YS__MsgPool.head; mptr != NULL; mptr = (MESSAGE*)(mptr->pnxt))
      if (mptr->bufptr != NULL) free(mptr->bufptr);
   YS__PoolReset(&YS__MsgPool);
   YS__PoolReset(&YS__EventPool);
   YS__PoolReset(&YS__QueuePool);
   YS__PoolReset(&YS__SemPool);
   YS__PoolReset(&YS__FlagPool);
   YS__PoolReset(&YS__BarPool);
   YS__PoolReset(&YS__ResPool);
   YS__PoolReset(&YS__StvarPool);
   YS__PoolReset(&YS__CondPool);
   YS__PoolReset(&YS__QelemPool);
   YS__PoolReset(&YS__PrcrPool);
   YS__PoolReset(&YS__PktPool);
   for (srptr = (STATREC*)YS__StatPool.head;
        srptr != (STATREC*)YS__StatPool.middle;
        srptr = (STATREC*)(srptr->pnxt) )
          if (srptr->hist != NULL)
              if ((srptr->bins+4)*sizeof(double) <= YS__HistPool.objsize)
                  YS__PoolReturnObj(&YS__HistPool,srptr->hist-1);
              else
                 free(srptr->hist);
   YS__PoolReset(&YS__HistPool);
   YS__PoolReset(&YS__StatPool);

   YS__ActProc = NULL;
   YS__ActEvnt = NULL;
   YS__Simtime = 0.0;
   YS__TrTime = 0.0;
   YS__Cycles = 0;
   YS__CycleTime = 1.0;
   StopFlag = 0;
   SIMTIME     = NewFvar("SimTime",YS__Simtime);
   YS__EventListInit();
   YS__PendRes = YS__NewQueue("PendingResource");
   TRACE_DRIVER_reset;
}

/**************************************************************************************/

void DriverInterrupt(i)            /* Interrupts the driver and returns to the user   */
int i;                             /* User supplied return value                      */
{
   PSDELAY;

   if (i == 0) YS__errmsg("Simulator interrupted with 0 stopflag");
   StopFlag = i;                    /* i returned by DriverRun()                      */
   TRACE_DRIVER_interrupt1
}

/**************************************************************************************/

int DriverRun(time)               /* Activates the simulation driver; returns a value */
                                  /* set by DriverInterrupt or 0 for termination      */
double time;                      /* Duration of simulation run                       */
{
   ACTIVITY *actptr;
   PROCESS *parptr;
   int parid;
   int term;
   int parblkflg;
   double oldsimtime;
   CONDITION *conptr1;
   FLAG *flgptr1;
   FLAG *flgptr2;
   RESOURCE *resptr;
   MESSAGE *mptr;

   TRACE_DRIVER_run                 /* User activating simulation drivers             */
   if (time > 0.0)                  /* Run for time units of time                     */
      SimUpTo = YS__Simtime + time;
   else SimUpTo = -1.0;             /* Run until the event list is empty              */
   StopFlag = 0;                    /* Set to i by DriverRun()                        */

   while (1)  {                     /* Start of main simulation loop                  */
      /* The ready list consists of those activities at the head of the event list    */
      /* that are scheuduled for the current simulation time                          */

      while (YS__EventListHeadval() == YS__Simtime) { /* The ready list is not empty  */
         actptr = (ACTIVITY*)YS__EventListGetHead();  /* Get the next activity        */

         if (YS__interactive && YS__TrIter >= 0) {/* Running under DBSIM              */
            if (YS__TrMode == EVENT_CHANGES) {    /* Mode is "event changes"          */
	       YS__TrIter--;                      /* Another event has occurred       */
	       if (YS__TrIter == 0) {             /* All requested events occurred    */
                  YS__UpdateTime(YS__Simtime);    /* Send time to DBSIM               */
                  YS__SendCommand(ACK);           /* Tell DBSIM last command is done  */
  	          YS__GetCommand(0);              /* Get the next command from DBSIM  */
               }
	    }
         }

         if (actptr->pp != NULL && actptr->status != USING_RES)
            /* Activity attached to a processor and waking up from a suspension       */
            /* other than a delay that accumulates time on the processor              */
               YS__RscAdd(actptr,0.0);   /* put it on the processors ready list       */
         else if (actptr->rscptr == NULL || YS__RscContinue(actptr))
         {  /* Activity not using a resource or finished using a resource             */
            /* If it was not finished using a resource, YS__RscContinue() would have  */
            /* put it back on the resource's queue and returned 0. Otherwise the      */
            /* activity must be activated by switching to it if it is a process       */
            /* or calling it if it is an event.                                        */

            if (actptr->type == PROCTYPE        /* The activity is a process          */
                || actptr->type == OSPRTYPE
                || actptr->type == USRPRTYPE)
            {
               TRACE_DRIVER_body1               /* Transferring to process            */
               parptr = actptr->parent;         /* Remember the activity's parent     */
               parid = actptr->parentid;        /*   and that parent's unique id      */
               parblkflg = actptr->blkflg;      /*   and if that parent is blocked    */

               term = YS__Transfer(actptr);     /* SWITCH CONTEXT                     */

               if (term) {                      /* The process terminates             */
                  TRACE_DRIVER_terminate        /* Process terminating                */
                  TRACE_DRIVER_prdelete         /* Deleting process                   */

                  if (parblkflg == BLOCK)       /* Parent was blocked                 */
                     YS__RdyListAppend(parptr); /* Wake parent up                     */

                  if (parblkflg == FORK) {      /* Parent forked this act.    */
                     if (parptr->children > 0)  {          /* Active children exist   */
                        parptr->children--;                /* Decr # of waiting child */
                        if ( parptr->children==0           /* Are all children done?  */
                             && parptr->status==WAIT_JOIN  /* Was parent at a JOIN    */
                             && parptr->id==parid) {       /* IDs match               */
                                TRACE_DRIVER_join1         /* All child act. complete */
                                YS__RdyListAppend(parptr); /* Reschedule parent       */
                  }  }  }

                  /* This next assignment is done in YS__Suspend, but terminating     */
                  /* processes bypass YS__Suspend so it must be done here             */
                  /* It identifies the process that transferred to this one           */
                  YS__ActProc = ((PROCESS*)actptr)->prev;

                  /* Free all the processes structures */

                  YS__ContextFree(((PROCESS*)actptr)->cxt);
                  if (actptr->statptr != NULL) {             /* Free statrecs         */
                     if (actptr->statptr->hist != NULL)      /* and their histograms  */
                        free(actptr->statptr->hist);
                     YS__PoolReturnObj(&YS__StatPool,actptr->statptr);
                  }                                          /* Free pending messages */
                  for (mptr = (MESSAGE*)YS__QueueGetHead(((PROCESS*)actptr)->MsgList);
                       mptr != NULL;
                       mptr = (MESSAGE*)YS__QueueGetHead(((PROCESS*)actptr)->MsgList)) {
                     if (mptr->bufptr != NULL) free(mptr->bufptr);
                     YS__PoolReturnObj(&YS__MsgPool,mptr);
                  }
                  YS__PoolReturnObj(&YS__QueuePool,((PROCESS*)actptr)->MsgList);
                  YS__PoolReturnObj(&YS__ProcPool,actptr);

               }

               if (StopFlag)  {           /* The process generated an interrupt       */
                  TRACE_DRIVER_interrupt  /* Driver Interrupt occurs                  */
                  return StopFlag;        /* Return from DriverRun() due to interrupt */
               }
            }

            if (actptr->type == EVTYPE      /* The activity is an event               */
               || actptr->type == OSEVTYPE)
            {
               YS__ActEvnt = (EVENT*)actptr;  /* An event is now active               */
               TRACE_DRIVER_body2             /* Initiating event ...                 */
               YS__ActEvnt->status = RUNNING; /* For statistics collection            */
               if (YS__ActEvnt->statptr)      /* Activity stats collected             */
                  StatrecUpdate(YS__ActEvnt->statptr,(double)RUNNING,YS__Simtime);

               (YS__ActEvnt->body)();         /* THE EVENT OCCURS                     */

               YS__ActEvnt->status = LIMBO;   /* For statistics collection            */
               if (YS__ActEvnt->statptr)      /* Activity stats collected             */
                  StatrecUpdate(YS__ActEvnt->statptr,(double)LIMBO,YS__Simtime);

               if (YS__ActEvnt->deleteflag == DELETE)  {
                  TRACE_DRIVER_evterminate    /* Event terminating ...                */
                  TRACE_DRIVER_evdelete       /* Deleting event ...                   */

                  if (YS__ActEvnt->blkflg == BLOCK)  {         /* Parent was blocked  */
                     YS__RdyListAppend(YS__ActEvnt->parent);   /* Wake parent up      */
                  }

                  if (YS__ActEvnt->blkflg == FORK)  { /* Parent forked this evnt      */
                     if (YS__ActEvnt->parent->children > 0) {/* Active children exist */
                        YS__ActEvnt->parent->children--;     /* Decr. # waiting child */
                        if (YS__ActEvnt->parent->children == 0  /* Are all child done */
                           && YS__ActEvnt->parent->status == WAIT_JOIN /* Par at JOIN */
                           && YS__ActEvnt->parent->id == YS__ActEvnt->parentid  )  {
                              TRACE_DRIVER_join2      /* All child activites complete */
                              YS__RdyListAppend(YS__ActEvnt->parent); /* Sched parent */
                  }  }  }

                  TRACE_DRIVER_body6                         /* Deleting event        */
                  if (YS__ActEvnt->statptr != NULL) {        /* Free the statrec      */
                     if (YS__ActEvnt->statptr->hist != NULL) /* Free the histogram    */
                        free(YS__ActEvnt->statptr->hist);
                     YS__PoolReturnObj(&YS__StatPool,YS__ActEvnt->statptr);
                  }
                  YS__PoolReturnObj(&YS__EventPool,YS__ActEvnt); /* Free the event    */
               }

               YS__ActEvnt = NULL;

               if (StopFlag)  {             /* Driver returns                         */
                  TRACE_DRIVER_interrupt    /* Driver Interrupt occurs                */
                  return StopFlag;
               }
            }
         }
      }

      TRACE_DRIVER_empty            /* --------- Ready List Empty */

      resptr = NULL;                /* Service all pending resources                  */
      while ( (resptr = (RESOURCE*)YS__QueueGetHead(YS__PendRes)) != NULL) {
         YS__RscActivate(resptr);   /* Moves activities from resource que to evtlst   */
         resptr->status = QUIESCENT;
      }

      if  (YS__EventListHeadval() >= 0)  { /* Returns 0 if event list is empty        */
         oldsimtime = YS__Simtime;              /* Remember current simulation time   */
         YS__Simtime = YS__EventListHeadval();  /* Advance simulation time            */
         if (SimUpTo > 0.0 &&                   /* DriverRun called for SimUpTo time  */
             YS__Simtime > SimUpTo)  {          /*    and it is there                 */
            YS__Simtime = SimUpTo;              /* Restart at SimUpto point           */
            Fset(SIMTIME,YS__Simtime);          /* Update SIMTIME state variable      */
            TRACE_DRIVER_body3                  /* TIME STEP COMPLETED                */
            return StopFlag;                    /* Return from DriverRun              */
         }

         if (oldsimtime < YS__Simtime) {        /* Simulation really did advance      */
           /* If pending resources were scheduled at the current simulation time,     */
           /* they would be on the event list now and simultation time would not      */
           /* actually advance                                                        */

            if (YS__interactive && YS__TrIter >= 0) { /* Running under DBSIM          */
	       if (YS__TrMode == FOR_TIME || YS__TrMode == UNTIL_TIME) {
	          while (YS__Simtime > YS__TrTime) { /* Stop if simtime >= TrTime    */
                     YS__UpdateTime(YS__TrTime);     /* Send time to DBSIM                 */
                     YS__SendCommand(ACK);      /* Tell DBSIM last command is done    */
                     YS__GetCommand(0);         /* Get the next command from DBSIM    */
                     if (YS__TrMode == TIME_CHANGES ||   /* Mode changed              */
                         YS__TrMode == EVENT_CHANGES ||
                         YS__TrIter < 0)
                        break;
                  }
                  TRACE_DRIVER_simtime    /* Driver Increasing Simulation Time        */
               }
               else if (YS__TrMode == TIME_CHANGES) {
	          YS__TrIter--;                   /* Completed another time change    */
                  TRACE_DRIVER_simtime            /* Driver Increasing Simulation Time*/
	          if (YS__TrIter == 0) {          /* Run for requested time changes   */
                     YS__UpdateTime(YS__Simtime); /* Send time to DBSIM               */
                     YS__SendCommand(ACK);        /* Tell DBSIM last command is done  */
                     YS__GetCommand(0);           /* Get the next command from DBSIM  */
                  }
               }
               else if (YS__TrMode == EVENT_CHANGES) {
                  TRACE_DRIVER_simtime    /* Driver Increasing Simulation Time        */
               }
            }
            else
               TRACE_DRIVER_simtime    /* Driver Increasing Simulation Time           */

            Fset(SIMTIME,YS__Simtime); /* Update the SIMTIME state variable           */
         }
      }
      else  {                         /* Terminate DriverRun due to empty event list  */
         TRACE_DRIVER_body4           /* READY & EVENT LIST EMPTY                     */
         return StopFlag;
}  }  }

/**************************************************************************************\
**************************** DBSIM Interface Routines **********************************
****************************************************************************************
**                                                                                    **
**     These routines provide the interface between YACSIM and DBSIM.  They are       **
**     used when the simulation has been invoked from DBSIM.  They provide for        **
**     communication and synchronization with DBSIM.                                  **
**                                                                                    **
****************************************************************************************
\**************************************************************************************/

void BreakPoint(string)                 /* Generate a breakpoint and return to DBSIM  */
char* string;                           /* Text passed back to DBSIM                  */
{
  char len = (char)strlen(string);      /* Limits strings to length 255               */

  if (YS__interactive == 0)             /* This command only works under DBSIM        */
     return;

  if (YS__TrBreak == 0)                 /* Breakpoints are disabled                   */
     return;

  YS__SendCommand(CLOCK);               /* Update DBSIM's time to current sim time    */
  write(SIMIO, (char*)&YS__Simtime, sizeof(YS__Simtime));

  YS__SendCommand(BRKPT);               /* Send a break point command to DBSIM        */
  write(SIMIO, &len, 1);                /* Send over length of string as a character  */
  write(SIMIO, string, strlen(string)); /* Send string itself                         */
  YS__GetCommand(1);                    /* Get another command from DBSIM             */
}

/**************************************************************************************/

static void YS__UpdateTime(time)         /* Update DBSIM's time to current sim time   */
double time;
{
  YS__SendCommand(CLOCK);                /* Send a clock command to DBSIM             */
  write(SIMIO, (char *) &time, sizeof(time)); /* Send the time                        */
}

/**************************************************************************************/

static void YS__GetCommand(bp)           /* Get the next command from DBSIM           */
int bp;                                  /* 1 if called from BreakPoint()             */
{
   char cmd;
   double step;

   read(SIMIO, &cmd, 1);                  /* Blocking read from socket                */
   if (cmd == RUN) {                      /* The only valid command is RUN            */
      read(SIMIO, &YS__TrMode, sizeof(YS__TrMode)); /* Read the parameters            */
      read(SIMIO, &step, sizeof(step));
      read(SIMIO, &TraceLevel, sizeof(TraceLevel));
      read(SIMIO, &YS__TrBreak, sizeof(YS__TrBreak));

      if (step <= 0.0) {
         YS__TrIter = -1;
      }
      else {
         switch(YS__TrMode) {
            case UNTIL_TIME:               /* Run until time = "step", and no more    */
               YS__TrTime = ( (YS__TrTime > step) ? YS__TrTime : step );
               break;
            case FOR_TIME:                 /* Run for "step" more units of time       */
               if (bp == 0) YS__TrTime = YS__TrTime + step;
               break;
            case TIME_CHANGES:             /* Run for "step" time changes             */
            case EVENT_CHANGES:            /* Run for "step" event list deletions     */
               YS__TrTime = YS__Simtime;
               YS__TrIter = (int) step;
               break;
         }
      }
   }
   else {
      fprintf(stderr,"Unknown command received; command ignored\n");
   }
}

/**************************************************************************************/

static void YS__SendCommand(cmd)      /* Send a response to DBSIM                     */
char cmd;                             /* Needed since write needs a pointer to a char */
{
  write(SIMIO, &cmd, sizeof(cmd));
}

/**************************************************************************************/

static void YS__Quit()                /* QUIT signal handler                          */
{
  close(SIMIO);
  exit(0);
}

/**************************************************************************************/
