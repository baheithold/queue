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

    freeQUEUE(queue);
    return 0;
}
