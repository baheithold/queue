/*
 *  File:   queue.c
 *  Author: Brett Heithold
 */

#include "queue.h"
#include "sll.h"

struct QUEUE {
    SLL *store;
    int size;

    void (*display)(void *, FILE *);
    void (*free)(void *);
};

QUEUE *newQUEUE(void (*d)(void *, FILE *), void (*f)(void *)) {
    QUEUE *newQ = malloc(sizeof(QUEUE));
    assert(newQ != 0);
    newQ->store = newSLL(d, f);
    newQ->size = 0;
    newQ->display = d;
    newQ->free = f;
    return newQ;
}
