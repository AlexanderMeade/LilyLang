#include <stdio.h>
#include <string.h>
#include <direct.h>
#include "./Lexer.c"
#include "./Parser.c"
#include ".\Evaluator.c"
#include "./Compiler.c"
//#include "./HashMap.c"
//Make code blocks work

int main(int argc, char **argv){
    

    CompilerMode mode = CompilerMode_ASM;
    //size_t mode = 1;
    printf("most recent build\n");
    if(argc < 2){
        printf("\nNOT ENOUGH ARGS");
        return 1;

    }

    int display = 1;
    //get flags

    printf("%d", argc);
    
    for(int i = 0; i < argc; i++){
        if(!strcmp("-CCOMPILER",argv[i])){
           mode = CompilerMode_C;
            printf("\nmode : C");
           continue;
        }

        if(!strcmp("-JSCOMPILER", argv[i])){
            mode = CompilerMode_JS;
            printf("\nmode : JS");
            continue;
        }
        if(!strcmp("-ASMCOMPILER", argv[i])){
            mode = CompilerMode_ASM;
        printf("\nmode : ASM");
            continue;
        }
        if(!strcmp("-dd", argv[i])){
            display = 0;
            continue;
        }
    }


    char *filename = argv[argc-1];
    if(!file_exists(filename)){
        printf("\nFILE DOESN'T EXIST");
        return 1;
    }
    char *content = read_file(filename);
    size_t end = 0;
    while(content[end] != '\0')
        end+=1;
    free(filename);

    register Lexer *lexer = Lexer_init(content, end-1);

    
    Lexer_start(lexer);

    //lexer->tokens = removeFront(lexer->tokens, TT_NEWLINE);

    printf("\n\n\n\n\n\nLEXER TOKEN DUMP \n\n\n\n\n\n\n");

    for(int i = 0; i < lexer->tokens->size; i++){
        Token *tok = (Token*)Vector_get(lexer->tokens, i);
        if(display)
        printf("\ntok %zu | %s\n\tvalue : %s", i, Token_types_map[tok->type], tok->stringValue);        
    
    }
    printf("\ntest6");printf("\n\n\n\n\n////////////////////////////////////////////////FUNC CALL CHECKS////////////////////////////////////////////////\n\n\n\n\n");        
    

    for(int i = 0; i < lexer->tokens->size; i++){
        Token *tok = (Token*)Vector_get(lexer->tokens, i);
        if(tok->type == TT_FUNCCALL){
            printf("\n\nFUNC %s, SIZE %zu attributes:\n", tok->stringValue, tok->data.args->size);        
            for(int j = 0; j < tok->data.args->size; j++){
                printf("\n\t tok [%d]: %s", j, ((Token*)Vector_get(tok->data.args, j))->stringValue);
            }
        }
    
    }
    printf("\n\n\n\n\n////////////////////////////////////////////////FUNC CALL CHECKS END////////////////////////////////////////////////\n\n\n\n\n");        


    Vector *tokens = Token_removeNeighborNewLines(lexer->tokens);

    printf("\n\n\n\nTOKEN REMOVE NEIGHBOR TEST\n\n\n\n");
    
    for(int i = 0; i < tokens->size; i++){
    
        printf("\n index [%d] \n", i);
        
        printf("\n tok str val : %s", ((Token*)Vector_get(tokens, i))->stringValue);
        
    }
    //printf("\n\ntest length tokens %zu \\ %zu", tokens->size, lexer->tokens->size);

    //EXIT FOR TEST
    //exit(0);
    //EXIT FOR TEST
    //
    

    tokens = Token_splitAt(tokens, TT_NEWLINE);
    Token_splitAtSubBlocks(tokens);
    //tokens = Token_filterType(tokens, TT_ERROR);
    if(display){
        printf("\nTOKENS FOR PARSE\n");
        for(int j = 0; j < tokens->size; j++){
            Vector *vect =((Vector*)Vector_get(tokens, j));
            printf("\nnext vector\n");
            for(int i = 0; i < vect->size; i++){
                Token *tok = (Token*)Vector_get(vect, i); 
                printf("\n tok : %s\n", tok->stringValue);
                Token_print(tok);
            }
    
        }
    }

    
    printf("\nTOKENS FOR PARSE END\n");
    printf("\n-------------- multilined statements test start --------------\n");

     /***************************
     *                          *
     *      PARSER              *
     *                          *
     ***************************/
    Vector *nodes = Vector_init(sizeof(ASTNode));
    
    printf("\n\n\n TOKENS SIZE %zu\n\n\n", tokens->size);
    
    for(int j = 0; j < tokens->size; j++){
        Vector *vect =((Vector*)Vector_get(tokens, j));
        Parser *parser = Parser_init(vect);
        Vector_push(nodes, Parser_parse(vect));

    }     
    printf("\033[0;32m");
    printf("\n============================================================PARSER PHASE ENDED ============================================================\n");
    printf("\033[0m");   
    printf("\n\n\n\n\nnodes-size : %zu\n\n\n\n\n", nodes->size);
    if(display){
        for(int i = 0; i < nodes->size; i++){ 
            printf("\033[0;35m");
            printf("\n==================================================PARSER RUN %d======================================================================\n", i);
            printf("\033[0m");   
            
            PrintNodes(Vector_get(nodes, i), 0);  
                 

            printf("\nend");  
    }
    }
    
    printf("\n\npre compiler test");
        
     /***************************
     *                          *
     *        EVALUATOR         *
     *                          *
     ***************************/
    
   // Evaluator *evaluator = Evaluator_init(nodes);
     
   // Evaluator_start(evaluator);
    
    
    Vector_push(nodes, (void*)ASTNode_init(Token_initID(TT_VECTORCLOSE, "VECTOR CLOSE", 0, 0)));
    Compiler *compiler = Compiler_init(nodes, mode);
    Compiler_start(compiler);
    printf("\n\n\n\n PROGRAM FINISHED EXECUTION \n\n\n\n");
    //free(evaluator);
    free(compiler);
    free(lexer);
    free(nodes);
    free(tokens);
    return 0;
}
