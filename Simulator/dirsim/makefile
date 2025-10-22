################ Identify the source and home directories ######################
# Set the following to the parcsim source directory
#	This is the directory with all the source code in the following subdirectories:
#		machdep	- all files with machine dependent code
#		incl 	- all *.h files except those with machine dependent code
#		src 	- all *.c files except those with machine dependent code
#	In addition there must be a subdirectory named obj for the object files produced
SRCDIR =/home/avinashk/sims/dirsim
# Set the following to the directory that will receive the parcsim and parcsim.o files.  
# This dirctory should also contain a copy of sim.h.
HOME =/home/avinashk/sims/dirsim
###################### Setup for different host cpu's ##########################
# Uncomment one of the following four lines
#CPU = ibm6k   # IBM RISC SYSTEM/600
#CPU = mc68020 # SUN3 
#CPU = sequent # Sequent 
#CPU = m68k    # Macintosh A/UX
CPU = sparc   # Sparc
# Uncomment one of the following lines;
#RS6K = $(HOME)/obj/rs6000.o     # Uncomment for RS6000 host
RS6K =                         # Uncomment for all other hosts
##################### Setup debug or optimized version  ########################
# Uncomment one of the following lines
GDB = -g     # Uncomment to make a debug
#DB = -O     # Uncomment to make an optimized version
################################################################################
#################### No user changes needed below this point ###################
################################################################################
INCL =  $(SRCDIR)/incl/simsys.h
all:	$(HOME)/yacsim $(HOME)/yacsim.o \
	$(HOME)/netsim $(HOME)/netsim.o \

clean:
	rm -f netsim netsim.o yacsim yacsim.o
	rm -f $(HOME)/obj/*.o
################################### YACSIM #####################################
yacsim: $(HOME)/yacsim $(HOME)/yacsim.o

$(HOME)/yacsim: $(SRCDIR)/src/yacsim.c
	cc -DxSIMdir='"$(HOME)"' -o yacsim $(SRCDIR)/src/yacsim.c
$(HOME)/yacsim.o: $(RS6K) \
		$(HOME)/obj/machdep.o \
		$(HOME)/obj/evlst.o \
		$(HOME)/obj/driver.y.o \
		$(HOME)/obj/util.o \
		$(HOME)/obj/baseq.o \
		$(HOME)/obj/userq.o \
		$(HOME)/obj/act.o \
		$(HOME)/obj/stat.o 
	ld -r $(RS6K)\
		$(HOME)/obj/machdep.o \
		$(HOME)/obj/evlst.o \
		$(HOME)/obj/driver.y.o \
		$(HOME)/obj/util.o \
		$(HOME)/obj/baseq.o \
		$(HOME)/obj/userq.o \
		$(HOME)/obj/act.o \
		$(HOME)/obj/stat.o \
		-L/usr/lib \
#		-lm
	mv a.out yacsim.o

################################### NETSIM #####################################

netsim: $(HOME)/netsim $(HOME)/netsim.o

$(HOME)/netsim: $(SRCDIR)/src/netsim.c
	cc -DxSIMdir='"$(HOME)"' -o netsim $(SRCDIR)/src/netsim.c 
$(HOME)/netsim.o: $(RS6K) \
		$(HOME)/obj/machdep.o \
		$(HOME)/obj/evlst.o \
		$(HOME)/obj/driver.n.o \
		$(HOME)/obj/util.o \
		$(HOME)/obj/baseq.o \
		$(HOME)/obj/userq.o \
		$(HOME)/obj/act.o \
		$(HOME)/obj/stat.o \
		$(HOME)/obj/net.o
	ld -r $(RS6K) \
		$(HOME)/obj/machdep.o \
		$(HOME)/obj/evlst.o \
		$(HOME)/obj/driver.n.o \
		$(HOME)/obj/util.o \
		$(HOME)/obj/baseq.o \
		$(HOME)/obj/userq.o \
		$(HOME)/obj/act.o \
		$(HOME)/obj/stat.o \
		$(HOME)/obj/net.o \
		-L/usr/lib \
#		-lm
	mv a.out netsim.o

################################### DBSIM #####################################

#dbsim: $(HOME)/dbsim 

#$(HOME)/dbsim:  $(SRCDIR)/src/dbsim.c $(SRCDIR)/incl/dbsim.h
#	cc -o dbsim $(SRCDIR)/src/dbsim.c -ltermcap

############################ YACSIM files ####################################

$(HOME)/obj/rs6000.o: $(SRCDIR)/machdep/rs6000.s
	cc -c $(SRCDIR)/machdep/rs6000.s 
	mv rs6000.o obj/rs6000.o

$(HOME)/obj/machdep.o: $(SRCDIR)/machdep/machdep.c \
	$(SRCDIR)/machdep/machdep.h $(SRCDIR)/incl/simsys.h 
	cc -D$(CPU) -c $(SRCDIR)/machdep/machdep.c -lm 
	mv machdep.o obj/machdep.o

$(HOME)/obj/evlst.o: $(INCL) $(SRCDIR)/src/evlst.c $(SRCDIR)/incl/tr.evlst.h
	cc $(DB)  -c $(SRCDIR)/src/evlst.c -lm
	mv evlst.o obj/evlst.o

$(HOME)/obj/util.o: $(INCL) $(SRCDIR)/src/util.c 
	cc $(DB)  -c $(SRCDIR)/src/util.c -lm
	mv util.o obj/util.o

$(HOME)/obj/baseq.o: $(INCL) $(SRCDIR)/src/baseq.c \
	$(SRCDIR)/incl/tr.baseq.h
	cc $(DB)  -c $(SRCDIR)/src/baseq.c -lm
	mv baseq.o obj/baseq.o

$(HOME)/obj/userq.o: $(INCL) $(SRCDIR)/src/userq.c \
	$(SRCDIR)/incl/tr.userq.h
	cc $(DB)  -c $(SRCDIR)/src/userq.c -lm
	mv userq.o obj/userq.o

$(HOME)/obj/act.o: $(INCL) $(SRCDIR)/src/act.c $(SRCDIR)/incl/tr.act.h
	cc $(DB)  -c $(SRCDIR)/src/act.c -lm
	mv act.o obj/act.o

$(HOME)/obj/stat.o: $(INCL) $(SRCDIR)/src/stat.c $(SRCDIR)/incl/tr.stat.h
	cc $(DB)  -c $(SRCDIR)/src/stat.c -lm
	mv stat.o obj/stat.o

$(HOME)/obj/driver.y.o: $(INCL) $(SRCDIR)/src/driver.c \
	$(SRCDIR)/incl/tr.driver.h
	cc $(DB) -DYACSIM -c $(SRCDIR)/src/driver.c -lm
	mv driver.o obj/driver.y.o

############################ NETSIM files ####################################

$(HOME)/obj/net.o: $(INCL) $(SRCDIR)/src/net.c \
	$(SRCDIR)/incl/tr.net.h
	cc $(DB) -c $(SRCDIR)/src/net.c -lm
	mv net.o obj/net.o

$(HOME)/obj/driver.n.o: $(INCL) $(SRCDIR)/src/driver.c \
	$(SRCDIR)/incl/tr.driver.h
	cc $(DB) -DNETSIM -c $(SRCDIR)/src/driver.c -lm
	mv driver.o obj/driver.n.o



