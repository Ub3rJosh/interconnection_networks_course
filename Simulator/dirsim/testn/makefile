ESRC = src

all: mesh mesh3

mesh: $(ESRC)/meshes.c ../netsim.o 
	../netsim $(FLAGS) -o mesh $(ESRC)/meshes.c -lm 
	rm -f meshes.o

mesh3: $(ESRC)/meshes3.c ../netsim.o 
	../netsim $(FLAGS) -o mesh3 $(ESRC)/meshes3.c -lm 
	rm -f meshes3.o

clean:
	rm -f diff.*
	rm -f test* out* a.out
