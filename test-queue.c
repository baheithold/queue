/*
 *  File:   test-queue.c
 *  Author: Brett Heithold
 */

#include "integer.h"
#include "queue.h"

int main (void) {

    QUEUE *queue = newQUEUE(displayINTEGER, freeINTEGER);

    return 0;
}
