#ifndef ASMCOMPILER_H
#define ASMCOMPILER_C

#include ".\Compiler.h"
#include ".\ASTNode.h"

static void ASMCompiler_nextNode(Compiler *compiler);

static void ASMCompiler_preformExpression(Compiler *compiler);

static void ASMCompiler_createDefs(Compiler *compiler);

static void ASMCompiler_createFunction(Compiler *compiler);

static void ASMCompiler_createArguments(Compiler *compiler, int count);


static void ASMCompiler_createData(Compiler *compiler);

static void ASMCompiler_assignData(Compiler *compiler);

static void ASMCompiler_evaluateEqualExpression(Compiler *compiler, ASTNode *node);

static void ASMCompiler_traverseAST(Compiler *compiler, ASTNode *node);

static void ASMCompiler_compile(Compiler *compiler);

void ASMCompiler_start(Compiler *compiler);



#endif
