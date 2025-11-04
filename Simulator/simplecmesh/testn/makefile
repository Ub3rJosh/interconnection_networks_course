SRC = src
FLAGS = -g -pg # -g is for GDB, -pg is for gprof

all: cmesh

cmesh: $(SRC)/cmesh.c ../netsim.o
	../netsim $(FLAGS) -o cmesh $(SRC)/cmesh.c -lm
	rm -f cmesh.o

clean:
	rm -f *out* *core* *dump* *mesh*
