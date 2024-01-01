#include "./include/Token.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#define Token_type_str(token) Token_types_map[token->type]

Token *Token_initSymbol(Token_types type, char symbol, char *stringValue, size_t line, size_t colmn){
    Token *token = calloc(1, sizeof(Token));
    token->type = type;
    token->data.symbol = symbol;
    token->stringValue = stringValue;
    token->line = line;
    token->colmn = colmn;
    return token;
}

Token *Token_initID(Token_types type, char *id, size_t line, size_t colmn){
    Token *token = calloc(1, sizeof(Token));
       
    token->type = type;
    token->stringValue = id;

    token->line = line;
    token->colmn = colmn;
    return token;
}

Token *Token_initNumber(double num, char *stringValue, size_t line, size_t colmn){
    Token *token = calloc(1, sizeof(Token));
    token->type = TT_NUMBER;
    token->data.value = num;
    token->stringValue = stringValue;
    token->line = line;
    token->colmn = colmn;
    return token;
}

Token *Token_initFuncCall(Vector *vect, char *stringValue){
    Token *token = calloc(1, sizeof(Token));
    token->type = TT_FUNCCALL;
    token->data.args = vect;
    token->stringValue = stringValue;
    return token;
}

Token *Token_initBlock(Vector *vect, char *stringValue){
    Token *token = calloc(1, sizeof(Token));
    token->type = TT_BLOCK;
    token->data.args = vect;
    token->stringValue = stringValue;
    return token;
}

void Token_convertToReservedFunction(Token *token){
    if(!strcmp(token->stringValue, "i32")){
        token->type = TT_I32;
        return;
    }
    if(!strcmp(token->stringValue, "str")){
        token->type = TT_STR;
        return;
    }
    if(!strcmp(token->stringValue, "if")){
        token->type = TT_IF;
        return;
    }
    if(!strcmp(token->stringValue, "return")){
        token->type = TT_RETURN;
        return;
    } 
    if(!strcmp(token->stringValue, "loop") && token->type != TT_FUNCCALL){
        token->type = TT_LOOP;
        return;
    }
    if(!strcmp(token->stringValue, "continue") && token->type != TT_FUNCCALL){
        token->type = TT_CONTINUE;
        return;
    }
    if(!strcmp(token->stringValue, "else") && token->type != TT_FUNCCALL){
        token->type = TT_ELSE;
        return;
    }
    if(!strcmp(token->stringValue, "break") && token->type != TT_FUNCCALL){
        token->type = TT_BREAK;
        return;
    }
    if(!strcmp(token->stringValue, "use")){
        token->type = TT_USE;
        return;
    }
    if(!strcmp(token->stringValue, "asm") && token->type != TT_FUNCCALL){
        token->type = TT_ASSEMBLY_MOD;
        return;
    }
}


void Token_printFuncCall(Token *token){
    printf("\n\t============FUNC CALL============\n");
    printf("\n func call name : %s", token->stringValue);

    for(int i = 0; i < token->data.args->size; i++){
        Token *tok = (Token*)Vector_get(token->data.args, i);
        printf("\nFunc Call : [%s] at index %d : \n",token->stringValue, i);
        Token_print(tok);
    }
    printf("\n\t============FUNC CALL END============\n");

}

void Token_printBlock(Token *token){
    printf("\n\t============CODE BLOCK============\n");
    printf("%s vector size : %zu", token->stringValue, token->data.args->size);

    for(int i = 0; i < token->data.args->size; i++){ 
        Vector *subTokens = (Vector*)Vector_get(token->data.args, i);
        for(int j = 0; j < subTokens->size; j++){
            Token *tok = (Token*)Vector_get(subTokens, j);
            printf("\nFunc Call : [%s] at index %d at index %d: \n",token->stringValue, i, j);
            Token_print(tok);
        }
    }
    printf("\n\t============CODE BLOCK END============\n");

}

void Token_printList(Token *token){
    printf("\n\nthis is a test\n\n");
    printf("\033[0m");
    printf("\033[0;38m");


    if(!token){
        printf("\nTOKEN IS NULL");
        return;
    }
    //goes over each token array
    printf("\n----LIST----\n");

    for(int j = 0; j < token->data.args->size; j++){
        //goes over ever token in token array
        Vector *tokens = Vector_get(token->data.args, j);
        printf("\n\t %s INDEX [%d] | ", token->stringValue, j);
        for(int i = 0; i < tokens->size; i++){
            Token *tok = (Token*)(Vector_get(tokens, i));
            printf("\ntok %d | %s\n\tvalue : %f", i, Token_types_map[tok->type], tok->data.value); 
            switch(tok->type){
            } 
        }
    }
    printf("\nLIST END");
    printf("\033[0m");
}

void Token_print(Token *token){
    printf("\033[0;35m");
    switch(token->type){
        case TT_BLOCK:
            Token_printBlock(token);
            printf("\033[0m"); 

            return;
        case TT_FUNCCALL:
            Token_printFuncCall(token);
            printf("\033[0m"); 

            return;
    }
    printf("\n\ttok | %s\n\tvalue : %f\n\tString value : %s\n\tline : %zu\n\tchar : %zu", Token_types_map[token->type], token->data.value, token->stringValue, token->line, token->colmn); 

}

Vector *Token_removeNeighborNewLines(Vector *tokens){
    Token *tok; 
    Vector *toks = Vector_init(sizeof(Token));
    size_t prevNewLineFound = 0;
    for(int i = 0; i < tokens->size; i++){
        tok = (Token *)Vector_get(tokens,i);
        
        if((tok->type == TT_NEWLINE && i == 0) || (tok->type == TT_NEWLINE && i == tokens->size-1))
            continue;
        //Vector_push(toks, (void*)tok);
        if(prevNewLineFound && tok->type == TT_NEWLINE)
            continue;
        if(tok->type == TT_NEWLINE && !prevNewLineFound){
            prevNewLineFound = 1;
            Vector_push(toks, (Token*)tok);
            continue;
        }
        if(tok->type != TT_NEWLINE){
            prevNewLineFound = 0;
            Vector_push(toks, (Token*)tok);
            continue;
        }

    }
    return toks;

}

Vector *Token_splitAt(Vector *tokens, Token_types type){

    Token *tok;

    Vector *vects = Vector_init(sizeof(Vector));
    Vector *vtoks = Vector_init(sizeof(Token));


    for(size_t index = 0; index < tokens->size; index++){
        tok = (Token*)Vector_get(tokens, index);

        if(tok->type == type){ //the split point

            if(vtoks->size > 0 && index != tokens->size-1){
                Vector_push(vects, (void*)vtoks); //push vtoks onto vects
                vtoks = Vector_init(sizeof(Token));
                continue;
            }
            continue;
        }
        //printf("\n\t Token_splitAt currToken : %s", tok->stringValue);
        
        Vector_push(vtoks, (void*)tok);
    }
    if(vtoks->size > 0) {
        Vector_push(vects, (void*)vtoks); //push vtoks onto vects
    }
    return vects;
}

void Token_splitAtSubBlocks(Vector *vector){
    for(int j = 0; j < vector->size; j++){
        Vector *tokens = (Vector*)Vector_get(vector, j);
        for(int i = 0; i < tokens->size; i++){
            Token *tok = (Token*)Vector_get(tokens, i);
            printf("\ntoken at Token_splitAtSubBlocks: %s", tok->stringValue);
            if(tok->type == TT_BLOCK){
                tok->data.args = Token_splitAt(tok->data.args, TT_NEWLINE);
                Token_splitAtSubBlocks(tok->data.args);
            }
        }
    }
}



int Token_isToken(char c){
    switch(c){
        case '\t':
        case ' ':
        case '+':
        case '-':
        case '*':
        case '/':
        case '\0':
        case '(':
        case ')':
        case '{':
        case '}':
        case '=':
        case ',':
        case '\n': 
        case '"':
            return 1;
    }
    return 0;
}

int Token_isOp(Token_types type){
    
    switch(type){
        case TT_PLUS:
        case TT_MINUS:
        case TT_EQUAL:
        case TT_LESSTHANOREQUAL:
        case TT_LESSTHAN:
        case TT_GREATERTHAN:
        case TT_GREATEROREQUAL:
        case TT_DOUBLEEQUAL:
        case TT_NOTEQUAL:
        case TT_AND:
        case TT_OR:
        case TT_CAST:

            return 1;
    }
    return 0;
}

int Token_isTerm(Token_types type){
    switch(type){
        case TT_MULT:
        case TT_DIV:
        case TT_MOD:
        case TT_BW_LEFT:
        case TT_BW_RIGHT:
        case TT_BW_AND:
        case TT_BW_OR:
        case TT_BW_XOR:
        return 1;
    }
    return 0;
}

Vector *removeFront(Vector *tokens, Token_types type){
    Vector *vect = Vector_init(sizeof (Token));
    
    if(vect->size < 1)
        return tokens;
    
    if(((Token*)Vector_get(tokens, 0))->type == type){
        for(int i = 1; i < tokens->size; i++){
            Vector_push(vect, Vector_get(tokens, i));
        }
    }
    return vect;
}

Vector *Token_filterType(Vector *tokens, Token_types type){
    Vector *newTokens = Vector_init(sizeof(Token)); 
    for(int i = 0; i < tokens->size; i++){
        if(((Token*)Vector_get(tokens, i))->type != type)
            Vector_push(newTokens, (void*)Vector_get(tokens, i));
    }
    return newTokens;
}
