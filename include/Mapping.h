#ifndef MAPPING_H
#define MAPPING_H

#include <stdio.h>
typedef struct {
    void *key;
    size_t keySize;
    void *value;
    size_t valueSize;
}Mapping;

Mapping *Mapping_init(void *key, size_t keySize, void *value, size_t valueSize);



#endif
