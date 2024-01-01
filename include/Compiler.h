#ifndef COMPILER_H
#define COMPILER_H

#include ".\Vector.h"
#include ".\ASTNode.h"
#include "./Compiler.h"
#include "./HashMap.h"
#include <stdio.h>

#define Compiler_IncLFB(compiler) compiler->LFBCount++;

#define Compiler_IncLFE(compiler) compiler->LFECount++;

#define Compiler_IncLC(compiler) compiler->LCCount++;


typedef enum {
    CompilerMode_ASM = 0,
    CompilerMode_C = 1,
    CompilerMode_JS = 2 
}CompilerMode;

typedef struct Compiler_t{
    Vector *nodes;
    Vector *definedFunctions;
    Vector *undefinedFunctions;
    
    HashMap *stringTags;

    size_t index;
    ASTNode *currNode;
    CompilerMode mode;
        
    size_t LFBCount; //function bodies
    size_t LFECount; //defintions
    size_t LCCount; //strings 

    FILE *file;
    char *fileName;
}Compiler;

Compiler *Compiler_init(Vector *nodes, CompilerMode mode);


void Compiler_next(Compiler *compiler);

void Compiler_start(Compiler *compiler);

static void Compiler_initializeDataASM(Compiler *compiler, ASTNode *node);

static void Compiler_evalNode(ASTNode *node);

static void Compiler_createVar();

static char* generateLine(Compiler *compiler);

#endif
