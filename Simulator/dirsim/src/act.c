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
#include "../incl/tr.act.h"
#include "../machdep/machdep.h"

/**************************************************************************************/

static char*  procstates[16] = { "LIMBO","READY","DELAYED","WAIT_SEMAPHORE",
                                 "WAIT_FLAG","WAIT_CONDITION",
                                 "WAIT_RESOURCE","USING_RESOURCE",
                                 "RUNNING","BLOCKED","WAIT_JOIN",
                                 "WAIT_MESSAGE","WAIT_BARRIER" };

/**************************************************************************************\
******************************* ACTIVITY Operations ************************************
****************************************************************************************
**                                                                                    **
**      There are two types of activities, processes and events.  The activity        **
**      operations are those that are work the same on both types.  The               **
**      descriptors for both events and processes are obtained from the               **
**      descriptors for activities by simply adding fields.                           **
**                                                                                    **
****************************************************************************************
\**************************************************************************************/

int YS__ActId(aptr)            /* Returns the system defined ID or 0 if TraceIDs is 0 */
ACTIVITY *aptr;                /* Pointer to the activity, or NULL                    */
{
   if (TraceIDs) {             /* TraceIDs must be set to get IDs printed in traces   */
      if (aptr) return aptr->id;                     /* aptr points to something      */
      else if (YS__ActEvnt) return YS__ActEvnt->id;  /* Called from an active event   */
      else if (YS__ActProc) return YS__ActProc->id;  /* Called from an active process */
      else YS__errmsg("Null Activity Referenced");
   }
   else return 0;
}

/**************************************************************************************/

void ActivitySetArg(aptr,arptr,arsize) /* Sets the argument pointer of an activity    */
ACTIVITY *aptr;                        /* Pointer to the activity                     */
char  *arptr;                          /* Pointer to the new argument                 */
int arsize;                            /* Argument size                               */
{
   PSDELAY;

   if (aptr) {                                  /* aptr points to an activity         */
      TRACE_ACTIVITY_setarg;                    /* Setting argument for activity ...  */
      aptr->argptr = arptr;                     /* Set its argument                   */
      aptr->argsize = arsize;
   }
   else if (YS__ActEvnt) {                      /* Called from an active event        */
      YS__ActEvnt->argptr = arptr;              /* It is setting its own argument     */
      YS__ActEvnt->argsize = arsize;
   }
   else if (YS__ActProc) {                       /* Called from an active process      */
      YS__ActProc->argptr = arptr;               /* It is setting its own argument     */
      YS__ActProc->argsize = arsize;
   }
   else YS__errmsg("Null Activity Referenced");
}

/**************************************************************************************/

char *ActivityGetArg(aptr)           /* Returns the argument pointer of an activity   */
ACTIVITY *aptr;                      /* Pointer to the activity                       */
{
   PSDELAY;

   if (aptr) {                                /* aptr points to an activity           */
      TRACE_ACTIVITY_getarg;                  /* Getting argument from activity ...   */
      return aptr->argptr;
   }
   else if (YS__ActEvnt) return YS__ActEvnt->argptr;    /* Active event or process    */
   else if (YS__ActProc) return YS__ActProc->argptr;    /* getting its own argument   */
   else YS__errmsg("Null Activity Referenced");
}

/**************************************************************************************/

int ActivityArgSize(aptr)            /* Returns the size of an argument               */
ACTIVITY *aptr;                      /* Pointer to the activity                       */
{
   PSDELAY;

   if (aptr) return aptr->argsize;                     /* aptr points to an activity  */
   else if (YS__ActEvnt) return YS__ActEvnt->argsize;  /* Active event or process     */
   else if (YS__ActProc) return YS__ActProc->argsize;  /* checking the size of its    */
   else YS__errmsg("Null Activity Referenced");        /* own argument                */
}

/**************************************************************************************/

void ActivitySchedTime(actptr,timeinc,bflg) /* Schedules an activity in the future    */
ACTIVITY *actptr;                           /* Pointer to the activity                */
double timeinc;                             /* Time incremnt                          */
int bflg;                                   /* Block flag - INDEPENDENT,BLOCK,FORK    */
{
   ACTIVITY *aptr;

   PSDELAY;

   if (actptr) aptr = actptr;                 /* actptr points to an activity, use it */
   else if (YS__ActEvnt) {                    /* or an event is rescheduling itself   */
      if (YS__ActEvnt->deleteflag == DELETE)
         YS__errmsg("Can not reschedule a deleting event");
      aptr = (ACTIVITY*)YS__ActEvnt;
   }
   else YS__errmsg("Null Activity Referenced"); /* or there is a mistake              */

   TRACE_ACTIVITY_schedule1;  /* Scheduling activity to occur in "timeinc" time units */
   aptr->blkflg = bflg;

   if (aptr->type==PROCTYPE && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==EVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");
    else if ((aptr->type==OSPRTYPE || aptr->type==USRPRTYPE) && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==OSEVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");

   if (aptr->blkflg!=INDEPENDENT && (YS__ActProc==NULL || YS__ActEvnt!=NULL))
      YS__errmsg("Only processes can perform forking or blocking schedules");

   if (timeinc == 0.0)  {                                     /* Schedule immediately */
      aptr->time = YS__Simtime;
      YS__RdyListAppend(aptr);
   }
   else if (timeinc > 0.0)  {                               /* Schedule in the future */
      aptr->time = YS__Simtime+timeinc;
      aptr->status = DELAYED;
      if (aptr->statptr)
         StatrecUpdate(aptr->statptr,(double)DELAYED,YS__Simtime);
      YS__EventListInsert(aptr);
   }
   else YS__errmsg("Can not schedule an activity to occur in the past");

   if (aptr->blkflg == FORK)  {
      aptr->parent = YS__ActProc;          /* Setting up a link to parent process     */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_fork;                 /* Forking schedule, parent process is ... */
      YS__ActProc->children++;
   }
   else if (aptr->blkflg == BLOCK)  {
      aptr->parent = YS__ActProc;          /* Setting up a link to parent process     */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_block;                /* Blocking schedule, parent process is ...*/
      YS__ActProc->status = BLOCKED;
      if (YS__ActProc->statptr)
         StatrecUpdate(YS__ActProc->statptr,(double)BLOCKED,YS__Simtime);
      YS__Suspend();
   }
}

/**************************************************************************************/

void ActivitySchedSema(actptr,sptr,bflg)    /* Schedules an activity to wait until a  */
                                            /* semaphore becomes positive.            */
ACTIVITY *actptr;                           /* Pointer to the activity                */
SEMAPHORE *sptr;                            /* Pointer to the semaphore               */
int bflg;                                   /* Block flag - INDEPENDENT,BLOCK,FORK    */
{
   ACTIVITY *aptr;

   PSDELAY;

   if (actptr) aptr = actptr;                 /* actptr points to an activity, use it */
   else if (YS__ActEvnt) {                    /* or an event is rescheduling itself   */
      if (YS__ActEvnt->deleteflag == DELETE)
         YS__errmsg("Can not reschedule a deleting event");
      aptr = (ACTIVITY*)YS__ActEvnt;
   }
   else YS__errmsg("Null Activity Referenced"); /* or there is a mistake              */

   TRACE_ACTIVITY_schedule2;         /* Scheduling activity to wait for semaphore ... */
   aptr->blkflg = bflg;

   if (aptr->type==PROCTYPE && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==EVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");
   else if ((aptr->type==OSPRTYPE || aptr->type==USRPRTYPE) && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==OSEVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");

   if (aptr->blkflg!=INDEPENDENT && (YS__ActProc==NULL || YS__ActEvnt!=NULL))
      YS__errmsg("Only processes can perform forking or blocking schedules");

   if (sptr->val > 0)  {
      TRACE_ACTIVITY_schedule3;       /* Semaphore decremented and activity activated */
      sptr->val--;
      YS__RdyListAppend(aptr);
   }
   else  {
      TRACE_ACTIVITY_schedule4;           /* Semaphore <= 0, activity waits           */
      aptr->status = WAIT_SEM;
      if (aptr->statptr)
         StatrecUpdate(aptr->statptr,(double)WAIT_SEM,YS__Simtime);
      YS__QueuePutTail(sptr,aptr);
   }

   if (aptr->blkflg == FORK)  {
      aptr->parent = YS__ActProc;         /* Setting up a link to parent process      */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_fork;                /* Forking schedule, parent process is ...  */
      YS__ActProc->children++;
   }
   else if (aptr->blkflg == BLOCK)  {
      aptr->parent = YS__ActProc;         /* Setting up a link to parent process      */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_block;               /* Blocking schedule, parent process is ... */
      YS__ActProc->status = BLOCKED;
      if (YS__ActProc->statptr)
         StatrecUpdate(YS__ActProc->statptr,(double)BLOCKED,YS__Simtime);
      YS__Suspend();
   }
}

/**************************************************************************************/

void ActivitySchedFlag(actptr,fptr,bflg) /* Schedules an activity to wait for a flag  */
                                         /* to be set.                                */
ACTIVITY *actptr;                        /* Pointer to the activity                   */
FLAG *fptr;                              /* Pointer to the flag                       */
int bflg;                                /* Block flag - INDEPENDENT,BLOCK,FORK       */
{
   ACTIVITY *aptr;

   PSDELAY;

   if (actptr) aptr = actptr;                 /* actptr points to an activity, use it */
   else if (YS__ActEvnt) {                    /* or an event is rescheduling itself   */
      if (YS__ActEvnt->deleteflag == DELETE)
         YS__errmsg("Can not reschedule a deleting event");
      aptr = (ACTIVITY*)YS__ActEvnt;
   }
   else YS__errmsg("Null Activity Referenced"); /* there is a mistake                 */

   TRACE_ACTIVITY_schedule8;             /* Scheduling activity to wait for flag ...  */
   aptr->blkflg = bflg;

   if (aptr->type==PROCTYPE && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==EVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");
   else if ((aptr->type==OSPRTYPE || aptr->type==USRPRTYPE) && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==OSEVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");

   if (aptr->blkflg!=INDEPENDENT && (YS__ActProc==NULL || YS__ActEvnt!=NULL))
      YS__errmsg("Only processes can perform forking or blocking schedules");

   if (fptr->state == CLEARED)  {
      TRACE_ACTIVITY_schedule13;  /* Flag not set, activity scheduled to wait on flag */
      aptr->status = WAIT_FLG;                /* The processes status changes         */
      if (aptr->statptr)                      /* Collect process statistics           */
         StatrecUpdate(aptr->statptr,(double)WAIT_FLG,YS__Simtime);
      YS__QueuePutTail(fptr,aptr);            /* Enter the flag's queue and           */
   }
   else  {
      TRACE_ACTIVITY_schedule14;   /* Flag set, activity scheduled to occur now       */
      fptr->state = CLEARED;       /* Flag is reset                                   */
      YS__RdyListAppend(aptr);
   }

   if (aptr->blkflg == FORK)  {
      aptr->parent = YS__ActProc;       /* Setting up a link to parent process        */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_fork;              /* Forking schedule, parent process is ...    */
      YS__ActProc->children++;
   }
   else if (aptr->blkflg == BLOCK)  {
      aptr->parent = YS__ActProc;       /* Setting up a link to parent process        */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_block;             /* Blocking schedule, parent process is ...   */
      YS__ActProc->status = BLOCKED;
      if (YS__ActProc->statptr)
         StatrecUpdate(YS__ActProc->statptr,(double)BLOCKED,YS__Simtime);
      YS__Suspend();
   }
}

/**************************************************************************************/

void ActivitySchedCond(actptr,cptr,bflg) /* Schedules an activity to wait until a     */
                                         /* condition is true.                        */
ACTIVITY *actptr;                        /* Pointer to the activity                   */
CONDITION *cptr;                         /* Pointer to the condition                  */
int bflg;                                /* Block flag - INDEPENDENT,BLOCK,FORK       */
{
   ACTIVITY *aptr;

   PSDELAY;

   if (actptr) aptr = actptr;                  /* actptr pints to an activity, use it */
   else if (YS__ActEvnt) {                     /* or an event is rescheduling itself  */
      if (YS__ActEvnt->deleteflag == DELETE)
         YS__errmsg("Can not reschedule a deleting event");
      aptr = (ACTIVITY*)YS__ActEvnt;
   }
   else YS__errmsg("Null Activity Referenced");  /* or there is a mistake             */

   TRACE_ACTIVITY_schedule5;        /* Scheduling activity to wait for condition ...  */
   aptr->blkflg = bflg;

   if (aptr->type==PROCTYPE && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==EVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");
   else if ((aptr->type==OSPRTYPE || aptr->type==USRPRTYPE) && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==OSEVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");

   if (aptr->blkflg!=INDEPENDENT && (YS__ActProc==NULL || YS__ActEvnt!=NULL))
      YS__errmsg("Only processes can perform forking or blocking schedules");

   if (cptr->state == FALSE) {
      TRACE_ACTIVITY_schedule11;          /* Condition false ...                      */
      aptr->status = WAIT_CON;            /* Process status changes                   */
      if (aptr->statptr)                  /* Collect process statistics               */
         StatrecUpdate(aptr->statptr,(double)WAIT_CON,YS__Simtime);
      YS__QueuePutTail(cptr,aptr);        /* Enter condition's queue                  */
   }
   else {
      TRACE_ACTIVITY_schedule15;          /* Condition true ...                       */
      YS__RdyListAppend(aptr);
   }

   if (aptr->blkflg == FORK)  {
      aptr->parent = YS__ActProc;        /* Setting up a link to parent process       */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_fork;               /* Forking schedule, parent process is ...   */
      YS__ActProc->children++;
   }
   else if (aptr->blkflg == BLOCK)  {
      aptr->parent = YS__ActProc;        /* Setting up a link to parent process       */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_block;              /* Blocking schedule, parent process is ...  */
      YS__ActProc->status = BLOCKED;
      if (YS__ActProc->statptr)
         StatrecUpdate(YS__ActProc->statptr,(double)BLOCKED,YS__Simtime);
      YS__Suspend();
   }
}

/**************************************************************************************/

void ActivitySchedRes(actptr,rptr,timeinc,bflg)
                                         /* Schedules an activity to use service from */
                                         /* a resource.                               */
ACTIVITY *actptr;                        /* Pointer to the activity                   */
RESOURCE *rptr;                          /* Pointer to the resource                   */
double timeinc;                          /* Amount of requested service               */
int bflg;                                /* Block flag - INDEPENDENT,BLOCK,FORK       */
{
   ACTIVITY *aptr;

   if (actptr) aptr = actptr;                 /* actptr points to an activity, use it */
   else if (YS__ActEvnt) {                    /* or an event is rescheduling itself   */
      if (YS__ActEvnt->deleteflag == DELETE)
         YS__errmsg("Can not reschedule a deleting event");
      aptr = (ACTIVITY*)YS__ActEvnt;
   }
   else YS__errmsg("Null Activity Referenced");  /* or there is a mistake             */

   TRACE_ACTIVITY_schedule6;              /* Scheduling activity to use resource ...  */
   aptr->blkflg = bflg;

   if (aptr->type==PROCTYPE && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==EVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");
   else if ((aptr->type==OSPRTYPE || aptr->type==USRPRTYPE) && aptr->status!=LIMBO)
      YS__errmsg("Processes can only be scheduled once");
   else if (aptr->type==OSEVTYPE && aptr->status!=RUNNING && aptr->status!=LIMBO)
      YS__errmsg("Can not reschedule a pending event");

   if (aptr->blkflg!=INDEPENDENT && (YS__ActProc==NULL || YS__ActEvnt!=NULL))
      YS__errmsg("Only processes can perform forking or blocking schedules");

   if (timeinc >=0.0) aptr->time = timeinc;
   else YS__errmsg("Can not request negative service time from a resource");
   TRACE_ACTIVITY_schedule12;            /* - resource notified or already pending    */
   YS__RscInsert(rptr,aptr);             /* Add the activity to the resource's queue  */
   aptr->rscptr = rptr;
   if (aptr->statptr)
      StatrecUpdate(aptr->statptr,(double)WAIT_RES,YS__Simtime);

   if (aptr->blkflg == FORK)  {
      aptr->parent = YS__ActProc;        /* Setting up a link to parent process       */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_fork;               /* Forking schedule, parent process is ...   */
      YS__ActProc->children++;
   }
   else if (aptr->blkflg == BLOCK)  {
      aptr->parent = YS__ActProc;        /* Setting up a link to parent process       */
      aptr->parentid = YS__ActProc->id;
      TRACE_ACTIVITY_block;              /* Blocking schedule, parent process is ...  */
      YS__ActProc->status = BLOCKED;
      if (YS__ActProc->statptr)
         StatrecUpdate(YS__ActProc->statptr,(double)BLOCKED,YS__Simtime);
      YS__Suspend();
   }
}

/**************************************************************************************/

void ActivityCollectStats(aptr) /* Activates automatic statistics collection          */
ACTIVITY *aptr;                 /* Pointer to the activity                            */
{
   ACTIVITY *actptr;

   PSDELAY;

   if (aptr) actptr = aptr;
   else if (YS__ActEvnt) actptr = (ACTIVITY*)YS__ActEvnt;
   else if (YS__ActProc) actptr = (ACTIVITY*)YS__ActProc;
   else YS__errmsg("NULL Activity referenced");

   if (actptr->statptr == NULL) {
      actptr->statptr = NewStatrec(actptr->name,INTERVAL,NOMEANS,HIST,12,1.0,13.0);
      StatrecUpdate(actptr->statptr,(double)(actptr->status),YS__Simtime);
   }                                                      /* Start the first interval */
   else YS__warnmsg("Process statistics collection already set");
}

/**************************************************************************************/

void ActivityStatRept(actptr)  /* Prints a report of an activity's statistics         */
ACTIVITY *actptr;              /* Pointer to the activity                             */
{
   ACTIVITY *aptr;
   STATREC *srptr;
   double total = 0.0;
   int i;

   PSDELAY;

   if (actptr) aptr = actptr;                 /* actptr points to an activity, use it */
   else if (YS__ActEvnt) aptr = (ACTIVITY*)YS__ActEvnt; /* or use the Active Event    */
   else if (YS__ActProc) aptr = (ACTIVITY*)YS__ActProc; /* or use the Active Process  */
   else YS__errmsg("Null Activity Referenced"); /* there is a mistake                 */

   srptr = aptr->statptr;
   if (srptr) {                              /* Statistics collection activated       */
      TracePrintTag("statrpt","\nStatistics for activity %s ",aptr->name);
      total = srptr->time1 - srptr->time0;   /* Total = sampling interval             */
      if (total > 0.0) {
         TracePrintTag("statrpt","from time %g to time %g:\n",srptr->time0,srptr->time1);
         for (i=0; i<srptr->bins; i++) {
            if (srptr->hist[i] > 0.0) {
               TracePrintTag("statrpt","   %6.3f time units, %5.2f%s of the sampling interval, ",
                       srptr->hist[i],(srptr->hist[i]/total)*100,"%");
               TracePrintTag("statrpt","were spent in state %-10s\n",procstates[i]);
            }
         }
      }
      else TracePrintTag("statrpt","\n   Zero interval; no statistics available");
      TracePrintTag("statrpt","\n");
   }
   else YS__warnmsg("Statistics not collected; cannot print report");
}

/**************************************************************************************/

STATREC *ActivityStatPtr(aptr) /* Returns a pointer to an activity's  statrec         */
ACTIVITY *aptr;                /* Pointer to the activity                             */
{
   PSDELAY;

   return aptr->statptr;
}

/**************************************************************************************/

ACTIVITY *ActivityGetParPtr()  /* Returns a pointer to the current activity's parent  */
{                              /* Returns NULL if it has no parent                    */
   PSDELAY;

   if (YS__ActEvnt) return (ACTIVITY*)(YS__ActEvnt->parent);
   else if (YS__ActProc) return (ACTIVITY*)(YS__ActProc->parent);
   else YS__errmsg("ActivityGetParPtr() must be called from within an activity");
}

/**************************************************************************************/

ACTIVITY *ActivityGetMyPtr()   /* Returns a pointer to the current activity           */
{
   PSDELAY;

   if (YS__ActEvnt) return (ACTIVITY*)(YS__ActEvnt);
   else if (YS__ActProc) return (ACTIVITY*)(YS__ActProc);
   else YS__errmsg("ActivityGetParPtr() must be called from within an activity");
}


/**************************************************************************************\
********************************* PROCESS Operations ***********************************
****************************************************************************************
**                                                                                    **
**       Processes have a stack and can suspend and restart execution at the          **
**       point of suspension.                                                         **
**                                                                                    **
****************************************************************************************
\**************************************************************************************/

PROCESS *NewProcess(pname,bodyname,stksz)
                        /* Creates and returns a pointer to a new process             */
char *pname;            /* User defined name                                          */
func bodyname;          /* Defining function of the process                           */
int stksz;              /* Stack size (0 = default size)                              */
{
   long    *stptr;
   long    argptr;
   PROCESS *prptr;

   prptr = (PROCESS*)YS__PoolGetObj(&YS__ProcPool);    /* Get the activity descriptor */
   prptr->id = YS__idctr++;                            /* System assigned unique ID   */
   strncpy(prptr->name,pname,31);                      /* Copy the name               */
   prptr->name[31] = '\0';                             /*   Limited to 31 characters  */
   prptr->type = PROCTYPE;                             /* Initialize all fields       */
   prptr->next = NULL;
   prptr->argptr = NULL;
   prptr->argsize = 0;
   prptr->time = 0.0;
   prptr->parent = NULL;
   prptr->parentid = -1;
   prptr->status = LIMBO;
   prptr->blkflg = INDEPENDENT;
   prptr->statptr = NULL;

   prptr->priority = 0.0;
   prptr->children = 0;
   prptr->timeleft = 0.0;
   prptr->enterque = 0.0;
   prptr->MsgList = YS__NewQueue("MsgQue");
   prptr->waitmsgtype = ANYTYPE;
   prptr->rscptr = NULL;
   prptr->pp = NULL;

   prptr->cxt = (int*)YS__NewCxt(bodyname,stksz);  /* Set up the stack, etc.   */
   TRACE_PROCESS_process;                                 /* Creating the process ... */
   return prptr;
}

/**************************************************************************************/

void ProcessSetStkSz(i)         /* Set the default stack size                         */
int i;                          /* New size                                           */
{
   YS__ContextSetStksz(i);
}

/**************************************************************************************/

int YS__Transfer(prptr)        /* Transfers control to another process                */
PROCESS *prptr;                /* Pointer to the new process                          */
{
   prptr->status = RUNNING;
   if (prptr->statptr)                                 /* Collect process statistics  */
      StatrecUpdate(prptr->statptr,(double)RUNNING,YS__Simtime);
   if (prptr->pp) prptr->pp->status = BUSY;            /* Attached to procr *pp       */

   prptr->prev = YS__ActProc;                          /* Return pointer              */
   YS__ActProc = prptr;
   TRACE_PROCESS_transfer;                             /* Transferring to ...         */
   return YS__CxtSwitchto(prptr->cxt);                 /* Do the switch               */
}

/**************************************************************************************/

int YS__Suspend()         /* Suspends the current process and passes control to the   */
                          /* process that "Transfer()"ed to the current process       */
{
   TRACE_PROCESS_suspend1;                          /* Suspending ...                 */

   if (YS__ActProc->prev != NULL)  {                /* Return to a process            */
      YS__ActProc = YS__ActProc->prev;
      TRACE_PROCESS_suspend2;                       /* returning to ...               */
   }
   else  {
      YS__ActProc = NULL;                            /* return to a non-process       */
      TRACE_PROCESS_suspend3;                        /* "new line"                    */
   }

   YS__CxtSwitchback();

   return 0;                         /* 0 return means the process has not terminated */
}

/**************************************************************************************/

void ProcessSleep()                  /* Suspend the current process                   */
{
   TRACE_PROCESS_sleep;

   if (YS__ActProc == NULL)
      YS__errmsg("ProcessSleep() can only be invoked from within a process body");
   YS__ActProc->status = LIMBO;
   if (YS__ActProc->statptr)         /* Collecting process statistics                 */
      StatrecUpdate(YS__ActProc->statptr,(double)LIMBO,YS__Simtime);
   YS__Suspend();                    /* Go to sleep                                   */

   TRACE_PROCESS_wakeup;
}

/**************************************************************************************/

void ProcessJoin()
   /* Suspends the current process until all forked child activities have terminated  */
{
   PSDELAY;

   if (YS__ActProc == NULL)
      YS__errmsg("ProcessJoin() can only be invoked from within a process body");

   TRACE_PROCESS_join1;          /* Process executing join                            */
   if (YS__ActProc->children > 0)  {
      TRACE_PROCESS_join2;       /* n active child activities exist, process suspends */
      YS__ActProc->status = WAIT_JOIN;
      if (YS__ActProc->statptr)   /* Collecting process statistics                    */
         StatrecUpdate(YS__ActProc->statptr,(double)WAIT_JOIN,YS__Simtime);
      YS__Suspend();              /* Return to driver to get next ready activity      */
   }
   else  {
      TRACE_PROCESS_join3;       /* No active child activities, process continues     */
}  }

/**************************************************************************************/

void ProcessDelay(timeinc)  /* Suspends the current process for "timeinc" time units. */
double timeinc;             /* Amount of delay                                        */
{
   if (YS__ActProc == NULL)
      YS__errmsg("ProcessDelay() can only be invoked from within a process body");
   if (timeinc < 0.0) YS__errmsg("Can not delay for a negative time");

   if (YS__ActProc->pp == NULL) {     /* Process not attached to a processor          */
      TRACE_PROCESS_delay;            /* Process delaying                             */
      YS__ActProc->time = YS__Simtime+timeinc; /* Set wakeup time                     */
      YS__ActProc->status = DELAYED;
      if (YS__ActProc->statptr)       /* Collecting process statistics                */
         StatrecUpdate(YS__ActProc->statptr,(double)DELAYED,YS__Simtime);
      YS__EventListInsert(YS__ActProc);
      YS__Suspend();                  /* Return to driver to get next ready activity  */
   }
   else {                             /* Process attached to a processor              */
      TRACE_PROCESS_waitcpu;          /* Process waiting for a turn on the processor  */
      YS__RscAdd(YS__ActProc,timeinc);/* Add to the processor's ready list            */
      YS__Suspend();                  /* Return to driver to get next ready activity  */
   }
}

/**************************************************************************************/

void YS__NetSendMsg(mptr)
MESSAGE *mptr;
{
   PROCESSOR *pr;
   int port;

   pr = mptr->source->pp;
   if (pr == mptr->receiver->pp) { /* Sender and receiver on the same processor    */
      YS__QueuePutTail(pr->localmsgs,mptr);      /* Queue the message              */
      if (pr->localsender != NULL) {             /* Sender idle                    */
         YS__RdyListAppend(pr->localsender);   /* Wake it up                     */
         pr->localsender = NULL;
      }
   }
   else { /* Must use the network to deliver the message                           */
      if (pr->router)  /* More than one network input port on this processor       */
         port = (pr->router)(pr->id, mptr->receiver->pp->id, pr->id);
      else
         port = 0;
      YS__QueuePutTail((pr->iportmsg)[port],mptr);  /* Add msg to port's msg list  */
      if (pr->iportevt[port] != NULL) {             /* Port Sender idle            */
         YS__RdyListAppend((pr->iportevt)[port]);   /* Wake it up                  */
         pr->iportevt[port] = NULL;
      }
   }
   if (mptr->blockflag == NOBLOCK) return;          /* Sender does not block       */
   YS__Suspend();
}

/**************************************************************************************/

void ProcessSendMsg(dest,buf,bytes,blkflg,type) /* Sends a message    */
PROCESS *dest;                        /* Pointer to destination process               */
char *buf;                            /* Pointer to the message contents              */
int bytes;                            /* Size of the message contents                 */
int blkflg;                           /* NOBLOCK or one of the blocking modes         */
int type;                             /* User defined type                            */
{
   MESSAGE   *mptr;
   char      *charptr;
   int       i;
   ACTIVITY *aptr;
   PACKET    *packet;
   int       port;
   PROCESSOR *pr;

   PSDELAY;

   mptr = (MESSAGE*)YS__PoolGetObj(&YS__MsgPool);

   if (YS__ActEvnt) {                           /* Called from an event               */
      aptr = (ACTIVITY*)YS__ActEvnt;
      if (blkflg != NOBLOCK) YS__errmsg("Only processes can send blocking messages");
      mptr->blockflag = NOBLOCK;
   }
   else {
      if (YS__ActProc) {                        /* Called from a process              */
         aptr = (ACTIVITY*)YS__ActProc;
         mptr->blockflag = blkflg;
      }
      else {
         YS__errmsg("ProcessSendMsg() must be called from within an activity");
      }
   }
   mptr->source = aptr;

   if (aptr->pp) mptr->srccpu = aptr->pp->id;
   else mptr->srccpu = -1;
   mptr->pktsz     = YS__PacketSize;
   mptr->destflag  = PROCESSDEST;              /* Send to a process                   */

   mptr->id        = YS__msgcounter++;         /* System defined unique message ID    */
   mptr->next      = NULL;
   mptr->receiver  = dest;
   mptr->msgtype   = type;
   mptr->sendtime  = YS__Simtime;
   mptr->blockflag = blkflg;
   TRACE_PROCESS_sendmsg1;  /* Process sends message to process ...                   */

   if (buf != NULL && bytes != 0) { /* Buffer the message data                        */
      mptr->bufptr = (char *)malloc(bytes);
      if (mptr->bufptr == NULL) YS__errmsg("Malloc fails in ProcessSendMsg");
      charptr = mptr->bufptr;
      for (i = 0; i<bytes; i++) *charptr++ = *buf++;  /* Copy the data to buffer      */
      mptr->msgsize = bytes;
   }
   else {
      mptr->msgsize = 0;
      mptr->bufptr = NULL;
   }

   if ( (mptr->source->pp == NULL) || (mptr->receiver->pp == NULL) ) {
      /* Either sending or receiving proc not attached to a processor, net not used   */
      /* Deliver the message directly to the receiver process                         */
      /* Release any process waiting for the message                                  */

      YS__QueuePutTail(mptr->receiver->MsgList,mptr);
      if (mptr->receiver->status == WAIT_MSG &&        /* Process waiting for msg.    */
         (mptr->msgtype == mptr->receiver->waitmsgtype ||
          mptr->receiver->waitmsgtype == ANYTYPE) &&   /* of requested type           */
          (mptr->source == (ACTIVITY*)(mptr->receiver->waitmsgsrc) ||
          mptr->receiver->waitmsgsrc == ANYSENDER) ) { /* from requested sender       */
             YS__RdyListAppend(mptr->receiver);
      }
      /* The message has now been delivered to the receiver process. Therefore,       */
      /* the only mode that will now block the sender is BLOCK                        */
      if (blkflg == NOBLOCK) return;
      else if (blkflg > BLOCK) return;
      else YS__Suspend();

   }
   else { /* Both source & receiver processes attached to processors                  */
      YS__NetSendMsg(mptr);
   }
}

/**************************************************************************************/

int ProcessReceiveMsg(buf, bytes, blockflg, typ, sender)
                             /* Copies received data into buf and returns its size    */
char *buf;                   /* Pointer to data buffer                                */
int bytes;                   /* maximum number of bytes to receive                    */
int blockflg;                /* BLOCK or NOBLOCK                                      */
int typ;                     /* Receive only this type                                */
PROCESS *sender;             /* Receive from this process only                        */
{
   MESSAGE *mptr;
   char *mptr1;
   int i;
   int bytestomove;
   double delay;

   PSDELAY;

   if (YS__ActProc == NULL || YS__ActEvnt != NULL)
      YS__errmsg("ProcessReceiveMsg() can only be invoked from within a process body");

   while (1)  {
      TRACE_PROCESS_msgrecv1;    /* Process checks for incoming message of given type */
      for( mptr = (MESSAGE*)(YS__QueueNext(YS__ActProc->MsgList,NULL));
           mptr != NULL;
           mptr = (MESSAGE*)(YS__QueueNext(YS__ActProc->MsgList,mptr)) )  {
              if ( (mptr->msgtype == typ || typ == ANYTYPE) &&
                   (mptr->source == (ACTIVITY*)sender || sender == ANYSENDER) ) {
                 TRACE_PROCESS_msgrecv2;          /* Message available                */
                 mptr1 = mptr->bufptr;            /* Copy the message contents        */
                 if (bytes < 0 ) {
                    bytestomove = 0;
                     YS__warnmsg("Trying to receive a negative number of bytes");
                 }
                 else if (bytes < mptr->msgsize) bytestomove = bytes;
                 else bytestomove = mptr->msgsize;
                 if (bytestomove > 0 && buf == NULL)
                    YS__errmsg("ProcessReceiveMsg() has a null receive buffer");
                 TRACE_PROCESS_msgrecv4;          /* Receiving message                */
                 if (mptr1 != NULL) {
                    for (i = 0; i < bytestomove; i++) *buf++ = *mptr1++;
                    delay =   YS__OSDelays[MSG_DELIVER_DELAY][0]
                            + YS__OSDelays[MSG_DELIVER_DELAY][1]*bytestomove;
                    if (delay > 0.0)
                       ProcessDelay(delay);  /* Delay for time to deliver data        */
                 }
                 if (bytestomove < mptr->msgsize) {
                    YS__warnmsg("Not all message bytes received");
                    mptr->msgsize = mptr->msgsize - bytestomove;
                    return -2;
                 }
                 YS__QueueDelete(YS__ActProc->MsgList,mptr);
                 if (mptr->blockflag == BLOCK) {  /* Sender blocked                   */
                    if (mptr->source->pp == YS__ActProc->pp) {
                       TRACE_PROCESS_msgrecv3;    /* Blocked sending process released */
                       YS__RdyListAppend(mptr->source);
                    }
                    else {
                       ProcessSendMsg(mptr->source,NULL,0,NOBLOCK,MSGACK);
                    }
                 }
                 if (mptr->bufptr != NULL) free(mptr->bufptr);
                 YS__PoolReturnObj(&YS__MsgPool,mptr);
                 return bytestomove;
              }
      }
      /* No available message matches type and sender or none available */
      if (blockflg == NOBLOCK)  {
         TRACE_PROCESS_msgrecv5;    /* No messagess available; non-blocking receive,  */
         return -1;                 /* process continues                              */
      }
      TRACE_PROCESS_msgrecv6;                /* No messages available;                */
      YS__ActProc->waitmsgtype = typ;        /* blocking receive, process suspends    */
      YS__ActProc->waitmsgsrc = sender;
      YS__ActProc->status = WAIT_MSG;
      if (YS__ActProc->statptr)              /* Collecting process statistics         */
         StatrecUpdate(YS__ActProc->statptr,(double)WAIT_MSG,YS__Simtime);
      YS__Suspend();                         /* Waiting for a message                 */
   }
}

/**************************************************************************************/

int ProcessCheckMsg(typ, sender)  /* Checks for a message of given type and sender    */
int typ;                          /* Type to check for                                */
PROCESS *sender;                  /* Sender to check for                              */
{
   MESSAGE *mptr;

   PSDELAY;

   if (YS__ActProc == NULL || YS__ActEvnt != NULL)
      YS__errmsg("ProcessCheckMsg() can only be invoked from within a process body");
   TRACE_PROCESS_msgchk1;        /* Process checks for incoming message of given type */
   for( mptr = (MESSAGE*)YS__QueueNext(YS__ActProc->MsgList,NULL);
        mptr != NULL;
        mptr = (MESSAGE*)YS__QueueNext(YS__ActProc->MsgList,mptr) )  {
      if ( (mptr->msgtype == typ || typ == ANYTYPE) &&
           (mptr->source == (ACTIVITY*)sender || sender == ANYSENDER) )  {
         TRACE_PROCESS_msgchk2;
         return mptr->msgsize;
      }
   }
   TRACE_PROCESS_msgchk3;   return -1;
}

/**************************************************************************************/

void ProcessSetPriority(prptr,p)       /* Sets the priority of an process             */
PROCESS *prptr;                        /* Pointer to the process                      */
double p;                              /* New priority                                */
{
   PSDELAY;

   if (prptr) prptr->priority = p;              /* prptr points to a process          */
   else if (YS__ActEvnt)
      ((PROCESS*)YS__ActEvnt)->priority = p;    /* Active event or                    */
   else if (YS__ActEvnt == NULL && YS__ActProc) /* process setting its own priority   */
      YS__ActProc->priority = p;
   else YS__errmsg("Null Activity Referenced");
}

PROCESS *NewUserProcess(pname,bodyname,stksz)
                        /* Creates and returns a pointer to a new user process.       */
                        /* User processes will delay for times inserted by the        */
                        /* profiler, while regular processes will not.                */
                        /* This is the only difference.                               */
char *pname;            /* User defined name                                          */
func bodyname;          /* Defining function of the process                           */
int stksz;              /* Stack size (0 = default size)                              */
{
   PROCESS *pptr;

   PSDELAY;

   pptr = NewProcess(pname,bodyname,stksz);
   pptr->type = USRPRTYPE;   /* This is the only difference with a regular process    */
   return pptr;
}

/**************************************************************************************/

PROCESS *NewOSProcess(pname,bodyname,stksz)
                        /* Creates and returns a pointer to a new OS activity         */
                        /* OS activities are like regular activities execept that     */
                        /* they will not preempt a running activity on a RRPRWP       */
                        /* resource.  They were created to simulate OS functions that */
                        /* wait for the end of a time slice before they interrupt.    */
char *pname;            /* User defined name                                          */
func bodyname;          /* Defining function of the process                           */
int stksz;              /* Stack size (0 = default size)                              */
{
   PROCESS *pptr;

   pptr = NewProcess(pname,bodyname,stksz);
   pptr->type = OSPRTYPE;    /* This is the only difference with a regular process    */
   return pptr;
}


/**************************************************************************************\
********************************* EVENT Operations *************************************
****************************************************************************************
**                                                                                    **
**        Events do not have a stack.  As a result, they are like subroutines         **
**        must terminate and start again at the beginning instead of suspending.      **
**        The rescheduling operations are an attempt to give events some of the       **
**        suspending properties of processes, but they are limited in what they do.   **
**                                                                                    **
****************************************************************************************
\**************************************************************************************/

EVENT *NewEvent(ename,bodyname,dflag,etype) /* Creates & returns pointer to an event  */
char *ename;                                /* User defined name                      */
func bodyname;                              /* Defining function of the event         */
int dflag;                                  /* DELETE or NODELETE                     */
int etype;                                  /* User defined type                      */
{
   EVENT *eptr;

   PSDELAY;

   eptr = (EVENT*)YS__PoolGetObj(&YS__EventPool);      /* Get the activity descriptor */
   eptr->id = YS__idctr++;                             /* System assigned unique ID   */
   strncpy(eptr->name,ename,31);                       /* Copy the name               */
   eptr->name[31] = '\0';                              /*   Limited to 31 characters  */
   eptr->type = EVTYPE;                                /* Initialize all fields       */
   eptr->next = NULL;
   eptr->argptr = NULL;
   eptr->argsize = 0;
   eptr->time = 0.0;
   eptr->parent = NULL;
   eptr->parentid = -1;
   eptr->status = LIMBO;
   eptr->blkflg = INDEPENDENT;
   eptr->statptr = NULL;

   eptr->priority = 0.0;
   eptr->timeleft = 0.0;
   eptr->enterque = 0.0;
   eptr->rscptr = NULL;
   eptr->pp = NULL;

   eptr->body = bodyname;
   eptr->deleteflag = dflag;
   eptr->evtype = etype;
   eptr->state = 0;
   TRACE_EVENT_event;                                   /* Creating event ...         */
   return eptr;
}

/**************************************************************************************/

void EventReschedTime(timeinc,st)  /* Reschedules an event to occur in the future     */
double timeinc;                    /* Time increment                                  */
int st;                            /* Return state                                    */
{
   PSDELAY;

   if (YS__ActEvnt == NULL)
      YS__errmsg("EventReschedule() can only be invoked from within an event body");
   if (YS__ActEvnt->deleteflag == DELETE)
      YS__errmsg("Can not reschedule a deleting event");

   if (timeinc < 0.0) YS__errmsg("Events can not be scheduled in the past");

   TRACE_EVENT_reschedule1; /* Rescheduling activity to occur in "timeinc" time units */
   YS__ActEvnt->state = st;

   if (YS__ActEvnt->pp == NULL)
      if (timeinc == 0.0)  {                                  /* Schedule immediately */
         YS__ActEvnt->time = YS__Simtime;
         YS__RdyListAppend(YS__ActEvnt);
      }
      else {                                                /* Schedule in the future */
         YS__ActEvnt->time = YS__Simtime+timeinc;
         YS__ActEvnt->status = DELAYED;
         if (YS__ActEvnt->statptr)
            StatrecUpdate(YS__ActEvnt->statptr,(double)DELAYED,YS__Simtime);
         YS__EventListInsert(YS__ActEvnt);
      }
   else
      YS__RscAdd(YS__ActEvnt,timeinc);  /* Add to the processor's ready list          */
}

/**************************************************************************************/

void EventReschedSema(sptr,st)   /* Reschedules an event to wait for a semaphore      */
SEMAPHORE *sptr;                 /* Pointer to the semaphore                          */
int st;                          /* Return state                                      */
{
   PSDELAY;

   if (YS__ActEvnt == NULL)
      YS__errmsg("EventReschedule() can only be invoked from within an event body");
   if (YS__ActEvnt->deleteflag == DELETE)
      YS__errmsg("Can not reschedule a deleting event");

   TRACE_EVENT_reschedule2;          /* Rescheduling event to wait for semaphore      */
   YS__ActEvnt->state = st;
   if (sptr->val > 0)  {
      TRACE_EVENT_reschedule3;       /* Semaphore decremented and activity activated  */
      sptr->val--;
      YS__RdyListAppend(YS__ActEvnt);
   }
   else  {
      TRACE_EVENT_reschedule4;       /* Semaphore <= 0, activity waits                */
      YS__ActEvnt->status = WAIT_SEM;
      if (YS__ActEvnt->statptr)
         StatrecUpdate(YS__ActEvnt->statptr,(double)WAIT_SEM,YS__Simtime);
      YS__QueuePutTail(sptr,YS__ActEvnt);
   }
}

/**************************************************************************************/

void EventReschedFlag(fptr,st)    /* Reschedules an event to wait for a flag          */
FLAG *fptr;                       /* Pointer to the flag                              */
int st;                           /* Return state                                     */
{
   EVENT *aptr;

   PSDELAY;

   if (YS__ActEvnt == NULL)
      YS__errmsg("EventReschedule() can only be invoked from within an event body");
   if (YS__ActEvnt->deleteflag == DELETE)
      YS__errmsg("Can not reschedule a deleting event");

   aptr = YS__ActEvnt;
   TRACE_EVENT_reschedule5;               /* Rescheduling event to wait for flag      */
   aptr->state = st;

   if (fptr->state == CLEARED)  {
      TRACE_ACTIVITY_schedule13;  /* Flag not set, activity scheduled to wait on flag */
      aptr->status = WAIT_FLG;                /* The processes status changes         */
      if (aptr->statptr)                      /* Collect process statistics           */
         StatrecUpdate(aptr->statptr,(double)WAIT_FLG,YS__Simtime);
      YS__QueuePutTail(fptr,aptr);            /* Enter the flag's queue and           */
   }
   else  {
      TRACE_ACTIVITY_schedule14;   /* Flag set, activity scheduled to occur now       */
      fptr->state = CLEARED;       /* Flag is reset                                   */
      YS__RdyListAppend(aptr);
   }
}

/**************************************************************************************/

void EventReschedCond(cptr,st)     /* Reschedules an event to wait for a condition    */
CONDITION *cptr;                   /* Pointer to the condition                        */
int st;                            /* Return state                                    */
{
   EVENT *aptr;

   PSDELAY;

   if (YS__ActEvnt == NULL)
      YS__errmsg("EventReschedule() can only be invoked from within an event body");
   if (YS__ActEvnt->deleteflag == DELETE)
      YS__errmsg("Can not reschedule a deleting event");

   aptr = YS__ActEvnt;
   TRACE_EVENT_reschedule7;               /* Scheduling event to wait for condition   */
   aptr->state = st;

   if (cptr->state == FALSE) {
      TRACE_ACTIVITY_schedule11;          /* Condition false ...                      */
      aptr->status = WAIT_CON;            /* Process status changes                   */
      if (aptr->statptr)                  /* Collect process statistics               */
         StatrecUpdate(aptr->statptr,(double)WAIT_CON,YS__Simtime);
      YS__QueuePutTail(cptr,aptr);        /* Enter condition's queue                  */
   }
   else {
      TRACE_ACTIVITY_schedule15;          /* Condition true ...                       */
      YS__RdyListAppend(aptr);
   }
}

/**************************************************************************************/

void EventReschedRes(rptr,timeinc,st)   /* Reschedules an event to use a resource     */
RESOURCE *rptr;                         /* Pointer to the resource                    */
double timeinc;                         /* Requested service time                     */
int st;                                 /* Return state                               */
{
   if (YS__ActEvnt == NULL)
      YS__errmsg("EventReschedule() can only be invoked from within an event body");
   if (YS__ActEvnt->deleteflag == DELETE)
      YS__errmsg("Can not reschedule a deleting event");
   if (timeinc < 0.0)
      YS__errmsg("Can not request negative service time from a resource");

   TRACE_EVENT_reschedule9;           /* Rescheduling event to use resource ..        */
   YS__ActEvnt->state = st;
   YS__ActEvnt->time = timeinc;
   TRACE_EVENT_reschedule10;          /* - resource notified or already pending  ..   */
   YS__RscInsert(rptr,YS__ActEvnt);   /* Add the activity to the resource's queue     */
   YS__ActEvnt->rscptr = rptr;
   if (YS__ActEvnt->statptr)
      StatrecUpdate(YS__ActEvnt->statptr,(double)WAIT_RES,YS__Simtime);
}

/**************************************************************************************/

int EventGetType(eptr)        /* Returns the event's type                             */
EVENT *eptr;                  /* Pointer to the event, or NULL                        */
{
   PSDELAY;

   if (eptr) return eptr->evtype;                     /* eptr points to an event      */
   else if (YS__ActEvnt) return YS__ActEvnt->evtype;  /* Called from the event        */
   else YS__errmsg("Null Activity Referenced");
}

/**************************************************************************************/

void EventSetType(eptr,etype)      /* Sets the event's type                           */
EVENT *eptr;                       /* Pointer to the event                            */
int etype;                         /* Event's new type                                */
{
   PSDELAY;

   TRACE_EVENT_settype;
   if (eptr) eptr->evtype = etype;                    /* eptr points to an event      */
   else if (YS__ActEvnt) YS__ActEvnt->evtype = etype; /* Called from the event        */
   else YS__errmsg("Null Activity Referenced");
}

/**************************************************************************************/

int EventGetDelFlag(eptr)          /* Returns DELETE (1) or NODELETE (0)              */
EVENT *eptr;                       /* Pointer to an event                             */
{
   PSDELAY;

   if (eptr) return eptr->deleteflag;              /* eptr points to an event  */
   else if (YS__ActEvnt) return YS__ActEvnt->deleteflag;  /* Called from event */
   else YS__errmsg("Null Activity Referenced");
}

/**************************************************************************************/

void EventSetDelFlag()             /* Makes an event deleting                         */
{
   if (YS__ActEvnt == NULL)
      YS__errmsg("EventSetDelFlag() not called from within an event");
   if (YS__ActEvnt->status != RUNNING)
      YS__errmsg("Changing Delete Flag of a scheduled event");
   TRACE_EVENT_setdelflg;
   YS__ActEvnt->deleteflag = DELETE;
}

/**************************************************************************************/

int EventGetState()              /* Returns the state set by EventSetState()          */
{
   PSDELAY;

   if (YS__ActEvnt) return YS__ActEvnt->state;
   else YS__errmsg("EventGetState() must be called from within an active event");
}

/**************************************************************************************/

void EventSetState(eptr,st)      /* Sets state used to designate a return point       */
EVENT *eptr;                     /* Pointer to an event                               */
int st;                          /* New state value                                   */
{
   PSDELAY;

   if (eptr == NULL )            /* Called from within the event                      */
      if (YS__ActEvnt) YS__ActEvnt->state = st;
      else YS__errmsg("EventSetState() has NULL pointer, but not called from an event");
   else eptr->state = st;
}

/**************************************************************************************/

EVENT *NewOSEvent(ename,bodyname,dflag,etype) /* Creates a new OS event               */
char *ename;                                  /* User defined name                    */
func bodyname;                                /* Defining function of the event       */
int dflag;                                    /* DELETE or NODELETE                   */
int etype;                                    /* User defined type                    */
{
   EVENT *eptr;

   eptr = NewEvent(ename,bodyname,dflag,etype);
   eptr->type = OSEVTYPE;
   return eptr;
}

/**************************************************************************************/

