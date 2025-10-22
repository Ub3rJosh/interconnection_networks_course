#   /*****************************************************************************/
#   /*****************************************************************************/
#   /**                    Copyright 1993 by Rice University                    **/
#   /**                              Houston, Texas                             **/
#   /**                                                                         **/
#   /**                           All Rights Reserved                           **/
#   /**                                                                         **/
#   /**    Permission to use, copy, modify, and distribute this software and    **/
#   /**    its documentation  for  any research  purpose and  without fee is    **/
#   /**    hereby granted, provided that the  above copyright  notice appear    **/
#   /**    in all  copies and  that both  that  copyright  notice  and  this    **/
#   /**    permission  notice appear in supporting  documentation,  and that    **/
#   /**    the name of Rice University not be  used  in  advertising  or  in    **/
#   /**    publicity pertaining to  distribution  of  the  software  without    **/
#   /**    specific, written prior permission.  The inclusion of this  soft-    **/
#   /**    ware  or its  documentation in  any  commercial  product  without    **/
#   /**    specific, written prior permission is prohibited.                    **/
#   /**                                                                         **/
#   /**    RICE  UNIVERSITY  DISCLAIMS  ALL  WARRANTIES WITH  REGARD TO THIS    **/
#   /**    SOFTWARE,  INCLUDING  ALL IMPLIED WARRANTIES  OF  MERCHANTABILITY    **/
#   /**    AND FITNESS.  IN NO EVENT SHALL RICE UNIVERSITY BE LIABLE FOR ANY    **/
#   /**    SPECIAL, INDIRECT  OR CONSEQUENTIAL DAMAGES  OR ANY DAMAGES WHAT-    **/
#   /**    SOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN    **/
#   /**    ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS  ACTION, ARISING    **/
#   /**    OUT OF  OR IN  CONNECTION  WITH  THE  USE  OR PERFORMANCE OF THIS    **/
#   /**    SOFTWARE.                                                            **/
#   /*****************************************************************************/
#   /*****************************************************************************/

        .extern .YS__CxtTerm
        .extern YS__CxtTerm
#
# RISC SYSTEM/6000 run-time stack organization
#
#      Low                   |                    |      Stack grows at
#      Addresses             |                    |      this end.
#                            |--------------------|
#      Callee's stack  --> 0 |     Back chain     |
#      pointer             4 |      Saved CR      |
#                          8 |      Saved LR      |
#                      12-16 |      Reserved      |  <-- LINK AREA (callee)
#                         20 |      SAVED TOC     |
#                            |--------------------|
#      Space for P1-P8       |         P1         |      OUTPUT ARGUMENT AREA
#      is always reserved    |        ...         |  <-- (used by callee to
#                            |         Pn         |       construct argument
#                            |--------------------|       list)
#                            |      Callee's      |
#                            |       stack        |  <-- LOCAL STACK AREA
#                            |        area        |
#                            |--------------------|
#                            |                    |      Possible word wasted
#                            |--------------------|      for alignment
#      -8*nfprs-4*ngprs  --> |    Caller's GPR    |      Rfirst = R13 for full
#                            |      save area     |               save
#                            |     max 19 words   |      R31
#                            |--------------------|
#              -8*nfprs  --> |    Caller's FPR    |      Ffirst = F14 for full
#                            |      save area     |               save
#                            |    max 18 dblwds   |      F31
#                            |--------------------|
#      Caller's stack  --> 0 |     Back chain     |
#      pointer             4 |      Saved CR      |
#                          8 |      Saved LR      |
#                      12-16 |      Reserved      |  <-- LINK AREA (caller)
#                         20 |      Saved TOC     |
#                            |--------------------|
#      Space for P1-P8    24 |         P1         |      INPUT PARAMETER AREA
#      is always reserved    |        ...         |  <-- (Callee's input
#                            |         Pn         |       parameters found
#                            |--------------------|       here.  Is also
#                            |      Caller's      |       caller's arg. area.)
#                            |       stack        |
#      High                  |        area        |
#      Addresses             |                    |
#
#
# The back chain is the caller's stack pointer.
#
        .file   "rs6000.s"
#
# Registers that must be preserved across calls (and hence must be saved
# and restored on lwp transfers):
#
#   General registers:
#
#       1      - Stack pointer
#       2      - TOC pointer
#       13-31
#
#   Floating point registers:
#
#       14-31
#
#   Special purpose registers:
#
#       Conditional register, bits 8-19 and 24-31
#
#
# On a lightweight process control transfer the following actions must
# take place:
#
# (1) The values in general purpose registers (GPRs) 1,2, and 13-31 must be
#     saved in the lwp descriptor.
# (2) The values in floating point registers (FPRs) 14-31 must be saved in the
#     lwp descriptor.
# (3) The Condition Register (CR) must be saved in the lwp descriptor.
#
        .globl  .SaveContext[PR]
        .csect  .SaveContext[PR]
.SaveContext:
# The base address of the lwp descriptor is passed as a parameter in GPR 3.
#
# Save GPRs 13-31 in register save area of lwp descriptor
        stm     13,4(3)
# save FPRs 14-31 in register save area of lwp descriptor
        stfd    14,80(3)
        stfd    15,88(3)
        stfd    16,96(3)
        stfd    17,104(3)
        stfd    18,112(3)
        stfd    19,120(3)
        stfd    20,128(3)
        stfd    21,136(3)
        stfd    22,144(3)
        stfd    23,152(3)
        stfd    24,160(3)
        stfd    25,168(3)
        stfd    26,176(3)
        stfd    27,184(3)
        stfd    28,192(3)
        stfd    29,200(3)
        stfd    30,208(3)
        stfd    31,216(3)
# Get CR, put in GPR 0
        mfcr    0
# Save CR in lwp descriptor
        st      0,224(3)
# save stack pointer (SP) in lwp descriptor
        st      1,228(3)
        brl
#
# RestoreContext reloads the saved context of the process identified by
# YS__ActCxt into the necessary general purpose, floating point, and
# special purpose registers.  This is done as follows:
#
# (1) The LR from the current lwp must be saved in its descriptor.  The
#     address of its descriptor is passed as the second parameter and so will
#     be found in GPR 5.
# (2) GPRs 13-31, FPRs 14-31, the CR, the LR, and the SP must be restored
#     from the new lwp desciptor.  The address of the new descriptor is
#     passed in GPR 4.
# (3) Execute a "brl" instruction to begin executing the new lwp at the
#     instruction following the branch to transfer that suspended it last.
#
# RestoreContext has three parameters.  The first is a value that is to be
# returned by ContextSwitchto or ContextSwitchback.  This passed to
# RestoreContext in GPR 3, and is left in GPR 3 since this is the proper
# register for the return value.
#
        .globl  .RestoreContext[PR]
        .csect  .RestoreContext[PR]
.RestoreContext:
# Save the LR from the current lwp in its descriptor
#
        mfspr   0,8
        st      0,232(5)
# Restore the non-volatile GPRs from the new lwp descriptor
        lm      13,4(4)
# Restore the non-volatile FPRs from the new lwp descriptor
        lfd     14,80(4)
        lfd     15,88(4)
        lfd     16,96(4)
        lfd     17,104(4)
        lfd     18,112(4)
        lfd     19,120(4)
        lfd     20,128(4)
        lfd     21,136(4)
        lfd     22,144(4)
        lfd     23,152(4)
        lfd     24,160(4)
        lfd     25,168(4)
        lfd     26,176(4)
        lfd     27,184(4)
        lfd     28,192(4)
        lfd     29,200(4)
        lfd     30,208(4)
        lfd     31,216(4)
# Restore the CR from the new lwp descriptor
        l       0,224(4)
        mtcrf   0xff,0
# Restore the LR from the new lwp descriptor
        l       0,232(4)
        mtspr   8,0
# Restore the SP from the new lwp descriptor
        l       1,228(4)
# Branch to routine in new lwp through LR
        brl
# The "brl" instruction not only uses the address in the LR as
# the branch target address, but it also puts the address of the
# instruction following the "brl" in the LR.  For all entries
# into the lwp but the first, the address in the LR is ignored.
# On the first entry into the lwp, the LR contains the address
# of the instruction to be executed upon termination of the lwp's
# code.  We want to execute YS__CxtTerm() at this point, which
# can be accomplished by following the "brl" by a branch to this
# routine.
        bl      .YS__CxtTerm
        cror    0xf,0xf,0xf
#
# GetEntryPoint takes as its input parameter the function pointer for
# a routine and returns the address of the entry point for that routine.
#
        .globl  .GetEntryPoint[PR]
        .csect  .GetEntryPoint[PR]
.GetEntryPoint:
        l       3,0(3)
        bcr     0x1f,0
#
# RestoreContext1 is identical to RestoreContext except that it does not
# need to save the link register, since it is called only from within
# YS__CxtTerm, and hence the current context will not be used again.
#
        .globl  .RestoreContext1[PR]
        .csect  .RestoreContext1[PR]
.RestoreContext1:
# Restore the non-volatile GPRs from the new lwp descriptor
        lm      13,4(4)
# Restore the non-volatile FPRs from the new lwp descriptor
        lfd     14,80(4)
        lfd     15,88(4)
        lfd     16,96(4)
        lfd     17,104(4)
        lfd     18,112(4)
        lfd     19,120(4)
        lfd     20,128(4)
        lfd     21,136(4)
        lfd     22,144(4)
        lfd     23,152(4)
        lfd     24,160(4)
        lfd     25,168(4)
        lfd     26,176(4)
        lfd     27,184(4)
        lfd     28,192(4)
        lfd     29,200(4)
        lfd     30,208(4)
        lfd     31,216(4)
# Restore the CR from the new lwp descriptor
        l       0,224(4)
        mtcrf   0xff,0
# Restore the LR from the new lwp descriptor
        l       0,232(4)
        mtspr   8,0
# Restore the SP from the new lwp descriptor
        l       1,228(4)
# Branch to routine in new lwp through LR
        brl
# The "brl" instruction not only uses the address in the LR as
# the branch target address, but it also puts the address of the
# instruction following the "brl" in the LR.  For all entries
# into the lwp but the first, the address in the LR is ignored.
# On the first entry into the lwp, the LR contains the address
# of the instruction to be executed upon termination of the lwp's
# code.  We want to execute YS__CxtTerm() at this point, which
# can be accomplished by following the "brl" by a branch to this
# routine.
        bl      .YS__CxtTerm
        cror    0xf,0xf,0xf

