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

# include <stdio.h>
# include <string.h>
# include <stdlib.h>

void main(argc, argv)
int argc;
char *argv[];
{
   char CCline[1024];
   int i;

   if (argc < 2) printf("\n     NETSIM: No command line arguments\n\n");
   else {
      snprintf(CCline, sizeof(CCline), "cc -I%s ",xSIMdir);
      
      for (i = 1; i < argc; i++)  {
         strncat(CCline, argv[i], sizeof(CCline) - strlen(CCline) - 1);
         strncat(CCline, " ", sizeof(CCline) - strlen(CCline) - 1);
      }
      strncat(CCline, xSIMdir, sizeof(CCline) - strlen(CCline) - 1);
      strncat(CCline, "/netsim.o", sizeof(CCline) - strlen(CCline) - 1);
      
      
      printf("    %s\n",CCline);
      system(CCline);
   }
   exit(0);
}

