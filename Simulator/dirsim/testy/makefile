SRC = src
FLAGS = 

all: test1 testmsg testque testres testschdev testsched teststat 

test1: $(SRC)/test1.c ../yacsim.o
	../yacsim $(FLAGS) -o test1 $(SRC)/test1.c
	rm -f test1.o

testmsg: $(SRC)/testmsg.c ../yacsim.o
	../yacsim $(FLAGS) -o testmsg $(SRC)/testmsg.c
	rm -f testmsg.o

testque: $(SRC)/testque.c ../yacsim.o
	../yacsim $(FLAGS) -o testque $(SRC)/testque.c
	rm -f testque.o

testres: $(SRC)/testres.c ../yacsim.o
	../yacsim $(FLAGS) -o testres $(SRC)/testres.c
	rm -f testres.o

testschdev: $(SRC)/testschdev.c ../yacsim.o
	../yacsim $(FLAGS) -o testschdev $(SRC)/testschdev.c
	rm -f testschdev.o

testsched: $(SRC)/testsched.c ../yacsim.o
	../yacsim $(FLAGS) -o testsched $(SRC)/testsched.c
	rm -f testsched.o

teststat: $(SRC)/teststat.c ../yacsim.o
	../yacsim $(FLAGS) -o teststat $(SRC)/teststat.c
	rm -f teststat.o

clean:
	rm -f diff.*
	rm -f test1 testmsg testque testres testschdev testsched teststat out
