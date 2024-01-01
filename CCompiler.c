#include "./include/CCompiler.h"


static void CCompiler_defineExpression(Compiler *compiler){
    
}

static void CCompiler_defineVar(Compiler *compiler, ASTNode *node){
    
} 

static void CCompiler_checkForOverlappingVars(Compiler *compiler){
    
}

static void CCompiler_createData(Compiler *compiler){     

}

static void CCompiler_traverseAST(Compiler *compiler){
    
    for(int i = 0; i < compiler->nodes->size; i++){
            
        ASTNode *node = Vector_get(compiler->nodes, i);
    
        switch(node->token->type){
            case TT_EQUAL:
                CCompiler_createData(compiler);             
                break;
        }

    }
}

static char* generateLine(Compiler *compiler){
   
}

void CCompiler_start(Compiler *compiler){
    printf("\nentered C Compiler stage.");
//    CCompiler_traverseAST(compiler);

}
