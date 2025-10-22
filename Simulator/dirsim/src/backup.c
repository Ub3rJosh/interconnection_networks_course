/**************************************************************************************/

void TracePrint(char *args, ... )     /* Sends user generated messages to text probes         */
{
    va_list var;
    char *fmt;

    va_start(var, args);
    fmt = va_arg(var, char *);  /* The first argument is the format string            */


    if (YS__interactive) {                       /* Sending to a probe                */
      vsprintf(YS__prbpkt, fmt, var);               /* Copy the arguments to a buffer */
      YS__SendPrbPkt(TEXTPROBE, NULL, YS__prbpkt);  /* Send the packet to the probe   */
    }
    else
         vprintf(args, var);
    va_end(var);
}

/**************************************************************************************/

void TracePrintTag(char *args, ... )  /* Sends a tagged message to a text probe               */
{                             /* Probes can filter on this tag                        */
    va_list var;
    char *tag, *fmt;

    va_start(var, args);
    tag = va_arg(var, char *); /* The first argument is a tag                         */
    fmt = va_arg(var, char *); /* The next arguemnt is the format string              */

    if (YS__interactive) {                       /* Sending to a probe                */
      vsprintf(YS__prbpkt, fmt, var);               /* Copy the arguments to a buffer */
      YS__SendPrbPkt(TEXTPROBE, tag, YS__prbpkt);   /* Send the packet to the probe   */
    }
    else                                         /* Sending to stdout                 */
      vprintf(args, var);

    va_end(var);
}
