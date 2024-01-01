#include ".\include\ASMCompiler.h"
#include "./Mapping.c"
#include "./HashMap.c"
#include <string.h>



static void ASMCompiler_preformExpression(Compiler *compiler){

}

static void ASMCompiler_createFunctionStart(Compiler *compiler){

}

static void ASMCompiler_createFunctionEnd(Compiler *compiler){
}

static void ASMCompiler_createTag(Compiler *compiler){
    
    
 
}

static void ASMCompiler_createArguments(Compiler *compiler, int count){
    char str[300];
	//andl	$-16, %esp
	//subl	$16, %esp
    
    int val = count * 8;
    sprintf(str, "\n\tandl  $-%d, %%esp", val); 
    file_write(compiler->fileName, "%s", str);
}

static char* ASMCompiler_findStringTag(Compiler *compiler, char *target){
    for(int i = 0; i < compiler->stringTags->maps->size; i++){
        if(!strcmp((char*)HashMap_get(compiler->stringTags, i)->key, target)){
            return (char*)HashMap_get(compiler->stringTags, i)->value;
        }
    }
}

static void ASMCompiler_createDefs(Compiler *compiler){
    char str[300];
    sprintf(str, "\nLFE%zu:\n\t.ident	\"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0\"", compiler->LFECount);
        file_write(compiler->fileName, "%s", str);

    for(int i = 0; i < compiler->undefinedFunctions->size; i++){
        sprintf(str, "\n\t.def	_%s;	.scl	2;	.type	32;	.endef", (char*)Vector_get(compiler->undefinedFunctions, i));
        file_write(compiler->fileName, "%s", str);
    }
    
}

static void ASMCompiler_defLabel(Compiler *compiler, size_t isMain){
    
    char str[400];
    if(isMain){ 
        isMain = 1;
         
        
        sprintf(str, "\nLFE%zu:\n\t.def	___main;	.scl	2;	.type	32;	.endef\n\t.globl	_main\n\t.def	_main;	.scl	2;	.type	32;	.endef", compiler->LFECount, compiler->fileName);
        file_write(compiler->fileName, "%s", str);
        compiler->LFECount++;
        return;
    }
        
    sprintf(str, "\nLFE%zu:\n\t.globl	_%s\n\t.def	_%s;	.scl	2;	.type	32;	.endef",compiler->LFECount, compiler->currNode->left->token->stringValue, compiler->currNode->left->token->stringValue);
    file_write(compiler->fileName, "%s", str);
    compiler->LFECount++;
}

static void ASMCompiler_addDefinedFunction(Compiler *compiler, char *name){
    Vector_push(compiler->definedFunctions, (void*) name);
    for(int i = 0; i < compiler->undefinedFunctions->size; i++){
        if(!strcmp((char*)Vector_get(compiler->undefinedFunctions, i), name)){
            Vector_remove(compiler->undefinedFunctions, i);
        }
    } 
}

static void ASMCompiler_addUndefinedFunction(Compiler *compiler, char *name){
    for(int i = 0; i < compiler->definedFunctions->size; i++){
        if(!strcmp((char*)Vector_get(compiler->definedFunctions, i), name) )
            return;
    }
    for(int i = 0; i < compiler->undefinedFunctions->size; i++){
        if(!strcmp((char*)Vector_get(compiler->undefinedFunctions, i), name))
            return;
    }
    Vector_push(compiler->undefinedFunctions, (void*)name);
}

static void ASMCompiler_defineStrings(Compiler *compiler, ASTNode *node){

    if(!node)
        return;
    char str[300];
    switch(node->token->type){
        case TT_STRING:
            
            sprintf(str, "\nLC%zu:\n\t.ascii \"%s\"", compiler->LCCount, node->token->stringValue);
            file_write(compiler->fileName, "%s", str);
            sprintf(str, "LC%zu", compiler->LCCount);
            HashMap_push(compiler->stringTags, Mapping_init(node->token->stringValue, sizeof(char*), str, sizeof(char*)));
            compiler->LCCount++;
            break;
        case TT_FUNCCALL:
            ASMCompiler_addUndefinedFunction(compiler, node->token->stringValue);
            for(int i = 0; i < node->token->data.args->size; i++){
                Token *tok = (Token*)Vector_get(node->token->data.args, i);
                if(tok->type == TT_STRING){
                       
                    sprintf(str, "\nLC%zu:\n\t.ascii \"%s\"", compiler->LCCount, tok->stringValue);
                    file_write(compiler->fileName, "%s", str);
                    sprintf(str, "LC%zu", compiler->LCCount);
                    HashMap_push(compiler->stringTags, Mapping_init(node->token->stringValue, sizeof(char*), str, sizeof(char*)));
                    compiler->LCCount++;
                    
                } 
            }
            break;
    }

    if(node->left)
        ASMCompiler_defineStrings(compiler, node->left);
    if(node->right)
        ASMCompiler_defineStrings(compiler, node->right);

}

static void ASMCompiler_evalDepth(Compiler *compiler, ASTNode *node){
    for(int i = 0; i < node->nestedStatements->size; i++){
        ASTNode *n = Vector_get(node->nestedStatements, i);
        if(n->token->type == TT_BLOCK)
            ASMCompiler_evalDepth(compiler, n); 
    }
}


static void ASMCompiler_createFunction(Compiler *compiler){
    size_t isMain = 0;
    char str[200];
    if(compiler->currNode ->token->type != TT_EQUAL)
        return;

    if(compiler->currNode->left->token->type != TT_FUNCCALL)
        return;
    
    Vector_push(compiler->definedFunctions, (void*)compiler->currNode->left->token->stringValue);

    isMain = !strcmp(compiler->currNode->left->token->stringValue, "main");
    
    ASMCompiler_defLabel(compiler, isMain);

    //
    //declare local strings [start] *blink blink*

    if(compiler->currNode->right->token->type == TT_BLOCK){
        
    }else{
        ASMCompiler_defineStrings(compiler, compiler->currNode); 
    }

    //declare local strings [stop] *blush blush*
    //

    
    //create tag
    sprintf(str, "\n_%s:\nLFB%zu:", compiler->currNode->left->token->stringValue, compiler->LFBCount);
    file_write(compiler->fileName, "%s", str);
    compiler->LFBCount++;
     
     
    file_write(compiler->fileName, "%s", "\n\t.cfi_startproc\n\tpushl\t\%ebp\n\t.cfi_def_cfa_offset 8\n\t.cfi_offset 5, -8\n\tmovl\t\%esp,\%ebp\n\t.cfi_def_cfa_register 5");

    
    if(isMain){
        ASMCompiler_createArguments(compiler, 2);
        file_write(compiler->fileName, "%s", "\n\tcall   ___main");
    }
    //

    //START PORTION OF FUNCTION
    //
    //FUNCTION BODY TIME TIME [START]
    //


    if(compiler->currNode->right->token->type == TT_BLOCK){
            
    }else{
        ASMCompiler_traverseAST(compiler, compiler->currNode->right); 
    }

    
    //FUNCTION BODY TIME TIME [END]
    //
    //END PORTION OF FUNCTION
    //

/*	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
*/
    if(isMain){
        file_write(compiler->fileName, "%s", "\n\tleave");
        file_write(compiler->fileName, "%s", "\n\t.cfi_restore 5\n\t.cfi_def_cfa 4, 4\n\tret\n\t.cfi_endproc\n\n\n");
        return;
    }
    file_write(compiler->fileName, "%s", "\n\tnop\n\tpopl	\%ebp\n\t.cfi_restore 5\n\t.cfi_def_cfa 4, 4\n\tret\n\t.cfi_endproc");

    /*
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$3, 12(%esp) #creates integer
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc

*/

}


static void ASMCompiler_createData(Compiler *compiler){
    
}

static void ASMCompiler_assignData(Compiler *compiler){
     
}

static void ASMCompiler_evaluateFunctionCall(Compiler *compiler, ASTNode *node){
    char str[400];
    printf("\n\nTEST");
    sprintf(str, "\n\tcall _%s", node->token->stringValue);
    file_write(compiler->fileName, "%s", str);
    printf("\n\n\n\n\n\narg count %zu", node->token->data.args->size);
    
    for(int i = 0; i < node->token->data.args->size; i++){
        printf("\nargs[%d] ", i, ((Token*)Vector_get(node->token->data.args, i))->stringValue);
    }

}

static void ASMCompiler_evaluateEqualExpression(Compiler *compiler, ASTNode *node){
    switch(node->left->token->type){
        case TT_FUNCCALL:
            ASMCompiler_createFunction(compiler);
            break;

    }
}

static void ASMCompiler_traverseAST(Compiler *compiler, ASTNode *node){
   printf("\ncurrent node %s", node->token->stringValue);

    switch(node->token->type){
        case TT_EQUAL:
            ASMCompiler_evaluateEqualExpression(compiler, node);
            break;
        case TT_FUNCCALL:
            ASMCompiler_evaluateFunctionCall(compiler, node);
            break;
    }


}

static void ASMCompiler_compile(Compiler *compiler){
    
    //printf("\ncurrent node %s", compiler->currNode->token->stringValue);
    while(compiler->currNode->token->type != TT_VECTORCLOSE){
        ASMCompiler_traverseAST(compiler, compiler->currNode);
        Compiler_next(compiler);
    }
    ASMCompiler_createDefs(compiler);

}

void ASMCompiler_start(Compiler *compiler){
     //set up file
    
    printf("\ncompiling asm");

    char str[200];

    sprintf(str, "\n\t.file\t\"%s\"\n\t.text\n", compiler->fileName);
    file_write(compiler->fileName, "%s", str);  
    printf("\ndon't die :<");

    ASMCompiler_compile(compiler);   

    printf("\ndefined functions:");
    for(int i = 0; i < compiler->definedFunctions->size; i++){
        printf("\n\t[%d] : %s", i, (char*)Vector_get(compiler->definedFunctions, i));
    }
    printf("\nundefined functions:");
    for(int i = 0; i < compiler->undefinedFunctions->size; i++){
        printf("\n\t[%d] : %s", i, (char*)Vector_get(compiler->undefinedFunctions, i));
    }
}
