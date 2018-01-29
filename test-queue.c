/*
 *  File:   test-queue.c
 *  Author: Brett Heithold
 */

#include "integer.h"
#include "queue.h"

int main (void) {

    QUEUE *queue = newQUEUE(displayINTEGER, freeINTEGER);

    // Add some items to queue
    enqueue(queue, newINTEGER(5));
    enqueue(queue, newINTEGER(6));
    enqueue(queue, newINTEGER(2));
    enqueue(queue, newINTEGER(9));
    enqueue(queue, newINTEGER(1));

    printf("Displaying queue: ");
    displayQUEUE(queue, stdout);
    printf("\n");
    printf("Displaying queue (debug): ");
    displayQUEUEdebug(queue, stdout);
    printf("\n");

    // Peek value
    printf("\nPeeking: %d\n", getINTEGER(peekQUEUE(queue)));

    // Remove the first value
    void *x = dequeue(queue);
    printf("Remove the first value: %d\n", getINTEGER(x));
    freeINTEGER(x);

    freeQUEUE(queue);
    return 0;
}
