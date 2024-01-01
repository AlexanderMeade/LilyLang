#include "./include/Mapping.h"
#include <stdlib.h>

Mapping *Mapping_init(void *key, size_t keySize, void *value, size_t valueSize){
    Mapping *mapping = calloc(1, sizeof(Mapping));
    mapping->key = key;
    mapping->keySize = keySize;
    mapping->value = value;
    mapping->valueSize = valueSize;
    return mapping;
}
