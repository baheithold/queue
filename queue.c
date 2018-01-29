/*
 *  File:   queue.c
 *  Author: Brett Heithold
 */

#include "queue.h"
#include "sll.h"

#define FRONT 0

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

void enqueue(QUEUE *items, void *value) {
    insertSLL(items->store, sizeSLL(items->store), value);
    items->size++;
}

void displayQUEUE(QUEUE *items, FILE *fp) {
    fprintf(fp, "<");
    for (int i = 0; i < sizeSLL(items->store); i++) {
        items->display(getSLL(items->store, i), fp);
        if (i < sizeSLL(items->store) - 1) {
            fprintf(fp, ",");
        }
    }
    fprintf(fp, ">");
}

void displayQUEUEdebug(QUEUE *items, FILE *fp) {
    displaySLLdebug(items->store, fp);
}

void freeQUEUE(QUEUE *items) {
    freeSLL(items->store);
    free(items);
}
