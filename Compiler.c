#include "./include/Compiler.h"
#include "./Vector.c"
#include ".\FileHandler.c"
#include ".\ASMCompiler.c"
#include "./CCompiler.c"
//#include "./HashMap.c"
#include <stdlib.h>
#include <stdio.h>
#include <direct.h>
#include <string.h>

//#include "./ASTNode.c"

Compiler *Compiler_init(Vector *nodes, CompilerMode mode){
    Compiler *compiler = calloc(1, sizeof(Compiler));
    compiler->nodes = nodes;
    compiler->index = 0;
    compiler->mode = mode;
    compiler->LFECount = 10;
    compiler->LCCount = 0;
    compiler->LFBCount = 10;
    compiler->definedFunctions = Vector_init(sizeof(char*));
    compiler->undefinedFunctions = Vector_init(sizeof(char*)); 
    compiler->currNode = (ASTNode*)Vector_get(compiler->nodes, compiler->index);
    compiler->stringTags = HashMap_init();

    char buffer[1024];
    if(_getcwd(buffer, 1024) == NULL){
        printf("\nBUGGED");
        exit(1);
    }
    switch(compiler->mode){
        case CompilerMode_ASM:
            compiler->file = file_create("./output.s");
            compiler->fileName = "./output.s";
            return compiler;
    
        case CompilerMode_C:
            compiler->file = file_create("./output.c");
            compiler->fileName = "./output.c";
            return compiler;
        case CompilerMode_JS:
            compiler->file = file_create("./output.js");
            compiler->fileName = "./output.js";
            return compiler;
    }

}

void Compiler_next(Compiler *compiler){
    compiler->index++;
    compiler->currNode = (ASTNode*)Vector_get(compiler->nodes, compiler->index);
}


void Compiler_start(Compiler *compiler){
    

    switch(compiler->mode){
        case CompilerMode_ASM:
            printf("\nCompiler Mode : ASM");
            ASMCompiler_start(compiler);
            return;
        case CompilerMode_C:
            printf("\nCompiler Mode : C");
            CCompiler_start(compiler);
            return;
    }

}

 /*****************************************************************\
 *                                                                 *
 *                 JS PORTION OF THE COMPILER                      *
 *                                                                 *
 \*****************************************************************/




 /*****************************************************************\
 *                                                                 *
 *                ASM PORTION OF THE COMPILER                      *
 *                                                                 *
 \*****************************************************************/














