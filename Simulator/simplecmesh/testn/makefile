SRC = src
FLAGS = -g -pg # -g is for GDB, -pg is for gprof

all: cmesh

cmesh: $(SRC)/cmesh.c ../netsim.o
	../netsim $(FLAGS) -o cmesh $(SRC)/cmesh.c -lm -fsanitize=address -fno-omit-frame-pointer -g -O0
	rm -f cmesh.o

clean:
# 	rm -r cmesh.dSYM
	rm -f *out* *core* *dump* *mesh*
