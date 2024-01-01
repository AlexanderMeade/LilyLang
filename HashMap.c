#include "./include/HashMap.h"

#include <stdlib.h>

HashMap *HashMap_init(){
    HashMap *map = calloc(1, sizeof(HashMap));
    map->maps = Vector_init(sizeof(Mapping));
    return map;
}

void HashMap_push(HashMap *map, Mapping *mapping){
    Vector_push(map->maps, (void*)mapping);
}

Mapping *HashMap_get(HashMap *map, size_t index){
    return (Mapping*)Vector_get(map->maps, index);
}
