SRC = src
FLAGS = -g -pg # -g is for GDB, -pg is for gprof

all: cmesh

cmesh: $(SRC)/cmesh.c ../netsim.o
	../netsim $(FLAGS) -o cmesh $(SRC)/cmesh.c
	rm -f cmesh.o

clean:
	rm -r cmesh.dSYM
	rm -f *out* *core* *dump* *mesh*
