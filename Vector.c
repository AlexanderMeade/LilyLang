#include "./include/Vector.h"
#include <stdlib.h>
#include <stdio.h>
Vector *Vector_init(size_t size_of_items){
    Vector *vector = calloc(1, sizeof(Vector));
    vector->item_size = size_of_items;
    vector->size = 0;
    vector->items = 0;
    return vector;
}

void *Vector_get(Vector *vector, size_t index){
    if(index >= vector->size){
        printf("\nVECTOR OUT OF BOUNDS \n");
        exit(1);
    }
    return vector->items[index];

}

void Vector_push(Vector *vector, void *item){

    vector->size += 1;
    if(!vector->items){
        vector->items = calloc(1, sizeof(vector->item_size));
        vector->items[vector->size-1] = item;
                return;
    }
    vector->items = realloc(vector->items, sizeof(vector->item_size) * vector->size);
    vector->items[vector->size-1] = item;
 
}

void Vector_remove(Vector *vector, size_t index){

    if (index < 0 || index >= vector->size) {
        printf("Invalid index to remove\n");
        return;
    }

    // Shift elements to fill the gap
    for (int i = index; i < vector->size - 1; i++) {
        vector->items[i] = vector->items[i+1];
    }

    // Decrease the size of the array
    vector->size--;

}
