OBJS0 = queue-0-0.o integer.o queue.o sll.o
OBJS1 = queue-0-1.o real.o queue.o sll.o
OBJS2 = queue-0-2.o string.o queue.o sll.o
OBJS3 = queue-0-3.o integer.o queue.o sll.o
OBJS4 = queue-0-4.o integer.o queue.o sll.o
OBJS5 = queue-0-5.o integer.o queue.o sll.o
OBJS6 = queue-0-6.o queue.o sll.o
OBJS7 = queue-0-7.o integer.o queue.o sll.o
OBJS8 = queue-0-8.o integer.o queue.o sll.o
OBJS9 = queue-0-9.o integer.o queue.o sll.o
OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g

all:	queue-0-0 queue-0-1 queue-0-2 queue-0-3 queue-0-4 queue-0-5 queue-0-6 \
		queue-0-7 queue-0-8 queue-0-9

queue-0-0:	$(OBJS0)
	gcc $(LOPTS) $(OBJS0) -o queue-0-0

queue-0-1:	$(OBJS1)
	gcc $(LOPTS) $(OBJS1) -o queue-0-1

queue-0-2:	$(OBJS2)
	gcc $(LOPTS) $(OBJS2) -o queue-0-2

queue-0-3:	$(OBJS3)
	gcc $(LOPTS) $(OBJS3) -o queue-0-3

queue-0-4:	$(OBJS4)
	gcc $(LOPTS) $(OBJS4) -o queue-0-4

queue-0-5:	$(OBJS5)
	gcc $(LOPTS) $(OBJS5) -o queue-0-5

queue-0-6:	$(OBJS6)
	gcc $(LOPTS) $(OBJS6) -o queue-0-6

queue-0-7:	$(OBJS7)
	gcc $(LOPTS) $(OBJS7) -o queue-0-7

queue-0-8:	$(OBJS8)
	gcc $(LOPTS) $(OBJS8) -o queue-0-8

queue-0-9:	$(OBJS9)
	gcc $(LOPTS) $(OBJS9) -o queue-0-9

sll.o:	sll.c sll.h
	gcc $(OOPTS) sll.c

queue.o:	queue.c queue.h sll.h
	gcc $(OOPTS) queue.c

queue-0-0.o:	./testing/queue-0-0.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue-0-0.c

queue-0-1.o:	./testing/queue-0-1.c queue.h sll.h real.h
	gcc $(OOPTS) ./testing/queue-0-1.c

queue-0-2.o:	./testing/queue-0-2.c queue.h sll.h string.h
	gcc $(OOPTS) ./testing/queue-0-2.c

queue-0-3.o:	./testing/queue-0-3.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue-0-3.c

queue-0-4.o:	./testing/queue-0-4.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue-0-4.c

queue-0-5.o:	./testing/queue-0-5.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue-0-5.c

queue-0-6.o:	./testing/queue-0-6.c queue.h sll.h
	gcc $(OOPTS) ./testing/queue-0-6.c

queue-0-7.o:	./testing/queue-0-7.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue-0-7.c

queue-0-8.o:	./testing/queue-0-8.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue-0-8.c

queue-0-9.o:	./testing/queue-0-9.c queue.h sll.h integer.h
	gcc $(OOPTS) ./testing/queue-0-9.c

integer.o:	integer.c integer.h
	gcc $(OOPTS) integer.c

real.o:	real.c real.h
	gcc $(OOPTS) real.c

string.o:	string.c string.h
	gcc $(OOPTS) string.c

test:	all 
	@echo Testing Queue
	@echo Running queue-0-0 tester...
	@./queue-0-0 > ./testing/myResults/results-0-0
	@diff ./testing/expectedResults/results-0-0 ./testing/myResults/results-0-0
	@echo
	@echo Running queue-0-1 tester...
	@./queue-0-1 > ./testing/myResults/results-0-1
	@diff ./testing/expectedResults/results-0-1 ./testing/myResults/results-0-1
	@echo
	@echo Running queue-0-2 tester...
	@./queue-0-2 > ./testing/myResults/results-0-2
	@diff ./testing/expectedResults/results-0-2 ./testing/myResults/results-0-2
	@echo
	@echo Running queue-0-3 tester...
	@./queue-0-3 > ./testing/myResults/results-0-3
	@diff ./testing/expectedResults/results-0-3 ./testing/myResults/results-0-3
	@echo
	@echo Running queue-0-4 tester...
	@./queue-0-4 > ./testing/myResults/results-0-4
	@diff ./testing/expectedResults/results-0-4 ./testing/myResults/results-0-4
	@echo
	@echo Running queue-0-5 tester...
	@./queue-0-5 > ./testing/myResults/results-0-5
	@diff ./testing/expectedResults/results-0-5 ./testing/myResults/results-0-5
	@echo
	@echo Running queue-0-6 tester...
	@./queue-0-6 > ./testing/myResults/results-0-6
	@diff ./testing/expectedResults/results-0-6 ./testing/myResults/results-0-6
	@echo
	@echo Running queue-0-7 tester...
	@./queue-0-7 > ./testing/myResults/results-0-7
	@diff ./testing/expectedResults/results-0-7 ./testing/myResults/results-0-7
	@echo
	@echo Running queue-0-8 tester...
	@./queue-0-8 > ./testing/myResults/results-0-8
	@diff ./testing/expectedResults/results-0-8 ./testing/myResults/results-0-8
	@echo
	@echo Running queue-0-9 tester...
	@./queue-0-9 > ./testing/myResults/results-0-9
	@diff ./testing/expectedResults/results-0-9 ./testing/myResults/results-0-9
	@echo

valgrind:	all 
	valgrind queue-0-0
	valgrind queue-0-1
	valgrind queue-0-2
	valgrind queue-0-3
	valgrind queue-0-4
	valgrind queue-0-5
	valgrind queue-0-6
	valgrind queue-0-7
	valgrind queue-0-8
	valgrind queue-0-9

clean:
	rm -f *.o vgcore.* test-queue queue-0-0 queue-0-1 queue-0-2 queue-0-3 \
	queue-0-4 queue-0-5 queue-0-6 queue-0-7 queue-0-8 queue-0-9
