#ifndef CCOMPILER_H
#define COMPILER_H

#include "./Compiler.h"

static void CCompiler_defineExpression(Compiler *compiler);

static void CCompiler_defineVar(Compiler *compiler, ASTNode *node); 

static void CCompiler_checkForOverlappingVars(Compiler *compiler);

static void CCompiler_createData(Compiler *compiler);

static void CCompiler_traverseAST(Compiler *compiler);

void CCompiler_start(Compiler *compiler);

#endif
