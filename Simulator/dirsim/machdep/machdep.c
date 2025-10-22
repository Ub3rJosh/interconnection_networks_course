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
#include "../machdep/machdep.h"

static CONTEXT *YS__ActCxt;
static long *YS__SchedCxt;
static CONTEXT *YS__CxtPtr;
static int YS__stkindex;
static int YS__stkmax;
static long *YS__lptr;

int YS__StackSize = (STKSZ/16)*16; 

#ifdef ibm6k  
/**************************************************************************************\
******************* RISC SYSTEM/6000 assembly language routines ************************
\**************************************************************************************/

extern  void    YS__SaveCxt();
extern  void    YS__RestoreCxt();

#endif /************************** End of RS6000 code *********************************/


#ifdef mc68020 
/**************************************************************************************\
*************************** SUN3 Assembley Language Macros *****************************
\**************************************************************************************/

#define SaveFramePtr(addr)         {  \
   asm("movl  a6,_YS__lptr");         \
   addr = YS__lptr;                   \
}

#define RestoreFramePtr(addr)     {  \
   YS__lptr = (addr);                \
   asm("movl _YS__lptr,a6");         \
}

#endif /**************************** End of SUN3 code *********************************/


#ifdef sparc  
/**************************************************************************************\
*************************** SPARC Assembley Language Macros ****************************
\**************************************************************************************/

/*
 * SAVE_CONTEXT is invoked from within ContextSwitchto or ContextSwitchback. *
 * Both of these routines are treated as non-leaf procedures by the SPARC C  *
 * compiler.  Consequently, the only registers that need to be saved are the *
 * frame pointer (%i6) and the return address (%i7).                         *
 *                                                                           *
 * 0x03 is the ST_FLUSH_WINDOWS software trap.  It causes all of the         *
 * registers sets cached in register windows to be flushed to memory (each   *
 * register set being stored in the appropriate frame on the user stack) and *
 * the WIM register is adjusted so that when the process to which control is *
 * being switched executes a return from whatever procedure it is currently  *
 * in, a trap occurs to cause the previous register set to be read from      *
 * memory.                                                                   *
 *                                                                           */

#define SAVE_CONTEXT(addr)                       \
        YS__CxtPtr = addr;                       \
        asm("sethi %hi(YS__CxtPtr),%o0");       \
        asm("ld   [%o0+%lo(YS__CxtPtr)],%o0");  \
        asm("std  %i6,[%o0+8]");                 \
        asm("ta   0x03");

/*                                                                          *
 * RESTORE_CONTEXT restores the frame pointer and stack pointer that were   *
 * saved in the new process context at the last time control was            *
 * transferred from the new context.  At the completion of RESTORE_CONTEXT, *
 * execution within ContextSwitchto or ContextSwitchback continues.  When   *
 * either of these routines terminate, it is the return address that has    *
 * just been restored by RESTORE_CONTEXT that determines that control       *
 * returns to the instruction in the new process just after its last call   *
 * to ContextSwitchto or ContextSwitchback.                                 *
 *                                                                          */

#define RESTORE_CONTEXT(addr)                    \
        YS__CxtPtr = addr;                       \
        asm("sethi %hi(YS__CxtPtr),%o0");       \
        asm("ld    [%o0+%lo(YS__CxtPtr)],%o0"); \
        asm("ldd   [%o0+8],%i6");

/*                                                                          *
 * INITIAL_CONTEXT is necessary because the first time control is           *
 * transferred to a new context, there is no saved return address to be     *
 * used.  We cannot simply put the entry point for ContextTerminate as the  *
 * return address and use RESTORE_CONTEXT because control would then never  *
 * be transferred to the entry point for the new context.  Instead, we must *
 * put the entry point for ContextTerminate in %o7 to be used as the return *
 * address when the process running in the new context terminates.  We must *
 * also set up the frame pointer and stack pointer for the new context (see *
 * InitContext() in machdep.c).  Finally, we use the entry point of the     *
 * new process (which was stored in the context descriptor) to jump         *
 * to the start of the new context root procedure.                          *
 *                                                                          */

#define INITIAL_CONTEXT(addr)                    \
        YS__CxtPtr = addr;                       \
        asm("sethi %hi(YS__CxtPtr),%o0");       \
        asm("ld    [%o0+%lo(YS__CxtPtr)],%o0"); \
        asm("ld    [%o0+12],%o7");                \
        asm("ld    [%o0+12],%i7");                \
        asm("ld    [%o0+16],%o1");               \
        asm("ld    [%o0+8],%i6");                \
        asm("add   %i6,104,%i6");                \
        asm("ld    [%o0+8],%o6");                \
        asm("jmpl  %o1,%o2");                    \
        asm("nop");

#endif /*************************** End of SPARC code *********************************/


#ifdef sequent 
/**************************************************************************************\
*************************** SEQUENT Assembley Language Macros **************************
\**************************************************************************************/

#define SaveFramePtr(addr)        {  \
   asm("movl  %ebp,_YS__lptr");      \
   addr = YS__lptr;                  \
}

#define RestoreFramePtr(addr)     {  \
   YS__lptr = (addr);                \
   asm("movl _YS__lptr,%ebp");       \
}

#endif /************************* End of Sequent code *********************************/


#ifdef m68k 
/**************************************************************************************\
**************************** A/UX Assembley Language Macros ****************************
\**************************************************************************************/

#define SaveFramePtr(addr)        {  \
   asm("mov.l %a6, YS__lptr");       \
   addr = YS__lptr;                  \
}

#define RestoreFramePtr(addr)     {  \
   YS__lptr = (addr);                \
   asm("mov.l YS__lptr, %a6");       \
}

#endif /************************ End of A/UX code *************************************/


#ifdef ibm6k 
/**************************************************************************************\
************************* RISC SYSTEM/6000 CONTEXT Methods *****************************
\**************************************************************************************/

int YS__CxtTerm()     /* Called whenever a process terminates                         */
{
   CONTEXT *cxtptr;

#ifdef PARCSIM
   YS__PSDelay();
#endif

/*   TRACE_CONTEXT_stack2*/
   cxtptr = YS__ActCxt;
   YS__ActCxt = YS__ActCxt->prev;
   RestoreContext1(-1,YS__ActCxt); 
}

/**************************************************************************************/

CONTEXT *YS__NewCxt(bodyname,stksz)    /* Create & return a pointer to a new context  */
func bodyname;                         /* Defining fucntion of the context            */
int stksz;                             /* Stack size (0 = default size)               */
{
   CONTEXT *cptr;
   long    *stptr;
   long    argptr;
   long    temp,*temp1;

   cptr = (CONTEXT*)YS__PoolGetObj(&YS__CxtPool);

   if (stksz <= 0 || stksz == YS__StackSize) {
      cptr->stacksize = YS__StackSize;
      cptr->stack = (long*)YS__PoolGetObj(&YS__StkPool);
   }
   else {
      cptr->stacksize = (stksz/16)*16;
      cptr->stack = (long*)malloc(cptr->stacksize);
      if (cptr->stack == NULL) YS__errmsg("Malloc fails in ContextInit()");
   }
   cptr->prev = NULL;
   stptr = (cptr->stack)+(cptr->stacksize)/4-8;
   cptr->savedSP = (long*)stptr;
   cptr->savedLR = (long*)GetEntryPoint(bodyname);
   return cptr;
}

/**************************************************************************************/

int YS__CxtSwitchto(ctxptr)         /* Switch to another context                      */
CONTEXT *ctxptr;                    /* CONTEXT *ctxptr - Pointer to the new context   */
{
   if (YS__ActCxt == NULL) {
      YS__SchedCxt = (long*)malloc(sizeof(CONTEXT));
      if (YS__SchedCxt == NULL) YS__errmsg("Malloc fails in YS__CxtSwitchto");
      YS__ActCxt = (CONTEXT*)YS__SchedCxt;
   }
   SaveContext(YS__ActCxt); 
   ctxptr->prev = YS__ActCxt;
   YS__ActCxt = ctxptr;
   RestoreContext(0,ctxptr,ctxptr->prev);
}

/**************************************************************************************/

int YS__CxtSwitchback()           /* Switch back to the context that switched here    */
{
   CONTEXT   *ctxptr;
   SaveContext(YS__ActCxt); 
   ctxptr = YS__ActCxt;
   YS__ActCxt = YS__ActCxt->prev;
   RestoreContext(0,YS__ActCxt,ctxptr); 
}

/****************************************************************************/

void YS__ContextFree(ctxptr)     /* Deallocate a context                              */
CONTEXT *ctxptr;                 /* CONTEXT *ctxptr - Pointer to the new context      */
{
   if (ctxptr->stack != NULL)
      if (ctxptr->stacksize == YS__StackSize)
         YS__PoolReturnObj(&YS__StkPool,ctxptr->stack);
      else 
         free(ctxptr->stack);
   ctxptr->stack = NULL;
   ctxptr->stacksize = 0;

   YS__PoolReturnObj(&YS__CxtPool,ctxptr);
}

#endif /**************** End of RISC SYSTEM/6000 CONTEXT Methods **********************/


#if defined(mc68020) || defined(sequent) || defined(m68k)
/**************************************************************************************\
*********************** SUN3, SEQUENT, and A/UX CONTEXT Methods ************************
\**************************************************************************************/

static int YS__CxtTerm()          /* Called whenever a process terminates             */
{
   CONTEXT *cxtptr;

#ifdef PARCIM
   YS__PSDelay();
#endif
   TRACE_CONTEXT_stack2 
   cxtptr = YS__ActCxt;
   if (YS__ActCxt->prev == 0) { 
      RestoreFramePtr(YS__SchedCxt);
      YS__ActCxt = 0;
   }
   else { 
      RestoreFramePtr(YS__ActCxt->prev->savedFP); 
      YS__ActCxt = YS__ActCxt->prev;
   }
   return -1;
}

/**************************************************************************************/

CONTEXT *YS__NewCxt(bodyname,stksz)   /* Create & return a pointer to a new context   */
func bodyname;                        /* Defining fucntion for the context            */
int stksz;                            /* Stack size (0 = default size)                */
{
   CONTEXT *cptr;
   long    *stptr;
   long    argptr;
 
   cptr = (CONTEXT*)YS__PoolGetObj(&YS__CxtPool);
   if (stksz <= 0 || stksz == YS__StkPool.objsize) {
      cptr->stacksize = YS__StkPool.objsize;
      cptr->stack = (long*)YS__PoolGetObj(&YS__StkPool);
   }
   else {
      cptr->stacksize = stksz;
      cptr->stack = (long*)malloc(cptr->stacksize);
      if (cptr->stack == NULL) YS__errmsg("Malloc fails in ContextInit()");
   }
   TRACE_CONTEXT_stack1 
   cptr->prev = NULL;
   stptr = (cptr->stack)+(cptr->stacksize)/4-1;
   *--stptr = (long)YS__CxtTerm;
   *--stptr = (long)(bodyname);
   *--stptr = 0;
   cptr->savedFP = (long*)stptr;
   return cptr;
}

/**************************************************************************************/

int YS__CxtSwitchto(ctxptr)      /* Switches to another context                       */
CONTEXT *ctxptr;                 /* CONTEXT *ctxptr - Pointer to the new context      */
{
   if (YS__ActCxt == NULL) {
      SaveFramePtr(YS__SchedCxt);
   }
   else { 
      SaveFramePtr(YS__ActCxt->savedFP); 
   }
   ctxptr->prev = YS__ActCxt;
   YS__ActCxt = ctxptr;
   RestoreFramePtr(ctxptr->savedFP);
   return 0;
}

/**************************************************************************************/

int YS__CxtSwitchback()    /* Switches back to the context that switched here         */
{
   SaveFramePtr(YS__ActCxt->savedFP); 
   if (YS__ActCxt->prev == NULL) { 
      RestoreFramePtr(YS__SchedCxt);
      YS__ActCxt = NULL;
   }
   else { 
      YS__ActCxt = YS__ActCxt->prev;
      RestoreFramePtr(YS__ActCxt->savedFP); 
   }
   return 0;
}

/****************************************************************************/

void YS__ContextFree(ctxptr)     /* Deallocate a context                              */
CONTEXT *ctxptr;                 /* CONTEXT *ctxptr - Pointer to the new context      */
{
   if (ctxptr->stack != NULL)
      if (ctxptr->stacksize == STKSZ)
         YS__PoolReturnObj(&YS__StkPool,ctxptr->stack);
      else 
         free(ctxptr->stack);
   ctxptr->stack = NULL;
   ctxptr->stacksize = 0;

   YS__PoolReturnObj(&YS__CxtPool,ctxptr);
}

#endif /*********** End of  SUN3, SEQUENT, and A/UX CONTEXT Methods *******************/


#ifdef sparc  
/**************************************************************************************\
********************************** SPARC Methods ***************************************
\**************************************************************************************/

int YS__CxtTerm()     /* Called whenever a process terminates           */
{
   CONTEXT *cxtptr;

#ifdef PARCSIM
   YS__PSDelay();
#endif
   TRACE_CONTEXT_stack2
   cxtptr = YS__ActCxt;
   YS__ActCxt = YS__ActCxt->prev;

   /*                                                                       *
    * 0x03 is the ST_FLUSH_WINDOWS software trap.  This insures that the    *
    * register sets cached in the register windows are all flushed to       *
    * memory prior to the return from YS__CxtTerm, thus setting the         *
    * WIM so that a trap occurs on the return and the register windows get  *
    * reloaded with the register sets from the new context.                 *
    *                                                                       */

   asm("ta   0x03");

   RESTORE_CONTEXT(YS__ActCxt)
   return(-1);
}

/****************************************************************************/

CONTEXT *YS__NewCxt(bodyname,stksz)   /* Create & return a pointer to a new context   */
func bodyname;                        /* Defining fucntion for the context            */
int stksz;                            /* Stack size (0 = default size)                */
{
   CONTEXT *cptr;
   long    *stptr;
   long    argptr;

   cptr = (CONTEXT*)YS__PoolGetObj(&YS__CxtPool);

   if (stksz <= 0 || stksz == YS__StackSize) {
      cptr->stacksize = YS__StackSize;
      cptr->stack = (long*)YS__PoolGetObj(&YS__StkPool);
   }
   else {
      cptr->stacksize = stksz;
      cptr->stack = (long*)memalign(8,cptr->stacksize);
      if (cptr->stack == NULL) YS__errmsg("Malloc fails in ContextInit()");
   }
   TRACE_CONTEXT_stack1
   cptr->prev = NULL;

   /*                                                                       *
    * For the SPARC, the stack frames must be aligned on 8-bytes boundaries *
    *                                                                       */

   stptr = (long*) (((int) ((cptr->stack)+(cptr->stacksize)/4-1)/8)*8);

   /*                                                                       *
    * When INITIAL_CONTEXT is executed, both the frame pointer and the      *
    * pointer are initialized for the new context.  Although it is may not  *
    * be necessary, the stack pointer is offset from the beginning of the   *
    * new process' stack area to allow room for a kernel save area before   *
    * the entry into the new process has a chance to adjust the stack       *
    * pointer.                                                              *
    *                                                                       */

   cptr->savedSP = (long*)stptr-64;
   cptr->savedRA = ((long*)YS__CxtTerm)-2;
   cptr->entry = (long*)bodyname;      /* This field contains the process   *
                                        * entry point on the first context  *
                                        * switch to the process.  On all    *
                                        * other context switches to the     *
                                        * process, it contains the return   *
                                        * address for the call to           *
                                        * YS__CxtSwitchto().                */
   cptr->first_time = TRUE;
   return cptr;
}

/****************************************************************************/

int YS__CxtSwitchto(ctxptr)      /* Switch to another context               */
CONTEXT *ctxptr;                 /* CONTEXT *ctxptr - Pointer to the new    *
                                  * context                                 */
{
   if (YS__ActCxt == NULL) {
      YS__SchedCxt = (long*)memalign(8,sizeof(CONTEXT));
      YS__ActCxt = (CONTEXT*)YS__SchedCxt;
   }

   SAVE_CONTEXT(YS__ActCxt)

   ctxptr->prev = YS__ActCxt;
   YS__ActCxt = ctxptr;

   if (YS__ActCxt->first_time)
   {
      YS__ActCxt->first_time = FALSE;
      INITIAL_CONTEXT(YS__ActCxt)
   }
   else
   {
      RESTORE_CONTEXT(YS__ActCxt)
   }
   return(0);
}

/****************************************************************************/

int YS__CxtSwitchback()    /* Switch back to the context that switched here */
{
   CONTEXT   *ctxptr;

   SAVE_CONTEXT(YS__ActCxt)

   ctxptr = YS__ActCxt;
   YS__ActCxt = YS__ActCxt->prev;

   RESTORE_CONTEXT(YS__ActCxt)
   return(0);
}
/****************************************************************************/

void YS__ContextFree(ctxptr)     /* Deallocate a context                              */
CONTEXT *ctxptr;                 /* CONTEXT *ctxptr - Pointer to the new context      */
{
   if (ctxptr->stack != NULL)
      if (ctxptr->stacksize == YS__StackSize)
         YS__PoolReturnObj(&YS__StkPool,ctxptr->stack);
      else 
         free(ctxptr->stack);
   ctxptr->stack = NULL;
   ctxptr->stacksize = 0;

   YS__PoolReturnObj(&YS__CxtPool,ctxptr);
}


#endif /*********************** End of SPARC Methods **********************************/


/**************************************************************************************\
******************************** Miscellaneous Operations ******************************
\**************************************************************************************/

void YS__ContextInit(blksize)
int blksize;
{
   YS__PoolInit(&YS__CxtPool,"ContextPool",blksize,sizeof(CONTEXT));
   YS__PoolInit(&YS__StkPool,"StackPool",blksize,STKSZ);
}

/**************************************************************************************/

void YS__ContextSetStksz(i)
int i;
{
   TRACE_CONTEXT_setstksz;
   YS__StackSize = ((i+15)/16)*16;
   if (YS__StkPool.head == NULL) YS__StkPool.objsize = YS__StackSize;
   else 
      YS__warnmsg("Can only set the default stack size before calling NewProcess");
}

/**************************************************************************************/


