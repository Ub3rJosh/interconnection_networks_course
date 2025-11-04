/***   ***   ***   ***   ***
This is a header file made by Joshua Maldonado.

It has a lot of variables/functions/etc that my (macos) compiler is complaining quite a bit about. So
this header file is my solution. Oh boy do I hope it works.
****   ***   ***   ***   ***/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <stdarg.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <unistd.h>

#include "../incl/simsys.h"


extern void   TracePrint(const char *, ...);
extern void   TracePrintTag(const char *, const char *, ...);
extern double GetSimTime(void);

extern void   SetSysRand(rngen);
extern double SysRand(double);
extern double UnixRandom(void);
extern int    RandUniformInt(int, int);
extern double RandPareto(double);
extern int    RandPoisson(double);
extern double RandUniform(double, double);
extern double RandNormal(double, double);
extern double RandExponential(double);
extern int    RandNegBinomial(int, double);
extern int    RandBinomial(int, double);
extern int    RandBernoulli(double);
extern double RandErlang(double, int);
extern int    RandGeometric(double);

extern void   YacSeed(double);
extern double YacRand(double);
extern void   YacRandomInit(void);
extern double YacRandom(void);
extern void   YacRandomStream(int);

extern long YS__NextSeed(int);
extern void YS__SendPrbPkt(char, const char *, const char *);
extern void YS__errmsg(char *);
extern void YS__warnmsg(char *);


extern int YS__Cycles;
extern int TraceIDs;
extern int YS__msgcounter;
extern int TraceLevel;
extern int YS__interactive;
extern int YS__NetCycleTime;
extern double YS__CycleTime;
