OBJS = integer.o queue.o sll.o test-queue.o
OOPTS = -Wall -Wextra -g -c
LOPTS = -Wall -Wextra -g

all : test-queue

test-queue: $(OBJS)
	gcc $(LOPTS) $(OBJS) -o test-queue

integer.o: integer.c integer.h
	gcc $(OOPTS) integer.c

sll.o: sll.c sll.h
	gcc $(OOPTS) sll.c

test-queue.o:	test-queue.c queue.h
	gcc $(OOPTS) test-queue.c

test: test-queue
	./test-queue

valgrind: test-queue
	valgrind test-queue

clean:
	rm -f *.o vgcore.* test-queue
