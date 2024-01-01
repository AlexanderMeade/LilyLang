#ifndef HASHMAP_H
#define HASHMAP_H

#include "./Mapping.h"

typedef struct {
    Vector *maps;
}HashMap;

HashMap *HashMap_init();

void HashMap_push(HashMap *map, Mapping *mapping);

Mapping *HashMap_get(HashMap *map, size_t index);
#endif
