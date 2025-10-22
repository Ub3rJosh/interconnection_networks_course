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

#ifndef MACHDEPH
#define MACHDEPH

#define NOTUSED 0x0fffffff

typedef struct YS__Context CONTEXT;

/**************************************************************************************\
*                                 Stack Sizes                                          *
\**************************************************************************************/

#ifdef mc68020  /***** SUN3 Stack Size ********/
#define                  STKSZ  25000
#endif

#ifdef sparc     /***** SPARC Stack Size *****/
#define                  STKSZ  30000
#endif

#ifdef sequent   /***** SEQUENT Stack Size *****/
#define                  STKSZ  3000
#endif

#ifdef m68k      /***** A/UX Stack Size ********/
#define                  STKSZ  5000
#endif

#ifdef ibm6k     /***** RS6000 Statck Size *****/
#define                  STKSZ  5000
#endif


#ifdef ibm6k  /************************************************************************\
*                               RS6000 CONTEXT data structure                          *
\**************************************************************************************/

static struct YS__Context
{
   char    *pnxt;             /* Next pointer for Pools                               */
   int     gpr[19];           /* Saved non-volatile general purpose registers (13-31) */
   double  fpr[18];           /* Saved non-volatile floating point registers (14-31)  */
   int     savedCR;           /* Saved Condition Register                             */
   long    *savedSP;          /* Saved stack pointer                                  */
   long    *savedLR;          /* Saved link register                                  */
   long    *stack;            /* Pointer to the context's stack                       */
   int     stacksize;         /* Size of the stack in bytes                           */
   CONTEXT *prev;             /* Pointer to context that switched to                  */
};

#endif  /********************* RS6000 CONTEXT data structure **************************/


#ifdef sparc /************************************************************************\
*                               SPARC CONTEXT data structure                          *
\*************************************************************************************/

static struct YS__Context
{
   char    *pnxt;             /* Next pointer for Pools                               */
   long    *dummyP;           /* Dummy pointer to make std addresses aligned         */
   long    *savedSP;          /* Saved stack pointer (%i6 or %r30)                   */
   long    *savedRA;          /* Saved return address (%i7 or %r31)                  */
   long    *entry;            /* Address of procedure entry point                    */
   long    *stack;            /* Pointer to the context's stack                      */
   int     stacksize;         /* Size of the stack in bytes                          */
   int     first_time;        /* True before first context switch                    */
   CONTEXT *prev;             /* Pointer to context that switched to                 */
                              /* here                                                */
   long    *pad;
};

#endif  /* SPARC data structure ******************************************************/


#if defined(mc68020) || defined(sequent) || defined(m68k)  /***************************\
*               SUN3, SEQUENT, and A/UX CONTEXT data structure                         *
\**************************************************************************************/

static struct YS__Context
{
   char    *pnxt;             /* Next pointer for Pools                               */
   long    *savedFP;          /* Saved FP used for switching to the previous context  */
   long    *stack;            /* Pointer to the context's stack                       */
   int     stacksize;         /* Size of the stack in bytes                           */
   CONTEXT *prev;             /* Pointer to context that switched to                  */
};

#endif  /* SUN3, SEQUENT, and A/UX CONTEXT data structure *****************************/


#ifdef debug  /************************************************************************\
*                           CONTEXT tracing statements                                 *
\**************************************************************************************/

#define TRACE_CONTEXT_stack1  \
   if (TraceLevel >= MAXDBLEVEL-1) { \
      for (YS__stkindex=1; YS__stkindex < (cptr->stacksize)/4; YS__stkindex++) \
         cptr->stack[YS__stkindex] = NOTUSED; \
   }

#define TRACE_CONTEXT_stack2  \
   if (TraceLevel >= MAXDBLEVEL-1)  \
   {  \
      for (YS__stkindex=(YS__ActCxt->stacksize)/4; YS__stkindex>0; YS__stkindex--)  \
          if (YS__ActCxt->stack[YS__stkindex]!=NOTUSED) YS__stkmax = YS__stkindex;  \
      printf("    %d stack locations used\n",(YS__ActCxt->stacksize)-YS__stkmax*4);\
   }

#define TRACE_CONTEXT_setstksz  \
   if (TraceLevel >= MAXDBLEVEL-2)  { \
      sprintf(YS__prbpkt,"    Setting default stack size to %d\n",i); \
      YS__SendPrbPkt(TEXTPROBE,NULL,YS__prbpkt); \
   }

#else  /*******************************************************************************/

#define TRACE_CONTEXT_stack1
#define TRACE_CONTEXT_stack2

#endif  /******************* CONTEXT tracing statements *******************************/


#endif  /* MACHDEPH */

