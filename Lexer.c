#include "./include/Lexer.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>


#define Lexer_back(lexer, steps)\
    lexer->index -= steps;\
    lexer->curr_char = lexer->content[lexer->index];\
    lexer->colmn--;

#define Lexer_getNext(lexer)\
    lexer->content[lexer->index+1]


#define Lexer_skipAllNewLines(lexer)\
    while(lexer->content[lexer->index] == '\n')\
        Lexer_next(lexer);




Lexer *Lexer_init(char *content, size_t end){
    
    Lexer *lexer= malloc(sizeof(Lexer));
      if (lexer == NULL) {
        fprintf(stderr, "Failed to allocate memory for Lexer\n");
        exit(1);  // Exit the program if memory allocation fails
    }
   
    lexer->end = end;
   
    lexer->tokens = Vector_init(sizeof(Token));
   
    lexer->index = 0;
   
    lexer->content = content;
   
    lexer->curr_char = lexer->content[lexer->index];   
 
    if (lexer->content == NULL) {
        fprintf(stderr, "Failed to allocate memory for Lexer\n");
        exit(1);  // Exit the program if memory allocation fails
    }
printf("\ntest6");
    
    lexer->ignoreTrails = 0;

printf("\ntest6");
    
    lexer->line = 1;
    return lexer;
}

void Lexer_skipWhiteSpace(Lexer *lexer){
    while(lexer->curr_char == '\t' || lexer->curr_char == ' '){
        Lexer_next(lexer);
    }

}
static void Lexer_next(Lexer *lexer){
    if(lexer->curr_char == '\n'){
        lexer->colmn = 0;
        lexer->line ++;
        lexer->index += 1;
        lexer->curr_char = lexer->content[lexer->index];       
        return;
    }
    lexer->index += 1;
    lexer->curr_char = lexer->content[lexer->index];
    lexer->colmn++;    


}
static void Lexer_skipNewLines(Lexer *lexer){
    
    if(lexer->content[lexer->index] != '\n')
        return;

    while(lexer->content[lexer->index] == '\n')
        Lexer_next(lexer);
    Lexer_back(lexer, 1);
    printf("\n LLexer_skipNewLines end char : %c", lexer->curr_char);
    

}

static Token *Lexer_parseNumber(Lexer *lexer, size_t isNeg){
    char *value = malloc(sizeof(char));
    size_t size = 0;
    int isFloat = 0;
    
    while ((isdigit(lexer->curr_char) || lexer->curr_char == '.'&&lexer->curr_char != '\0')){
        //printf("%c", lexer->curr_char);
        if(lexer->curr_char == '.' && isFloat == 0){
            isFloat = 1;
        }
        /*else if(lexer->curr_char == '.' && isFloat == 1){
            char *str = calloc(1, sizeof(char) * 2);
            str[0] = lexer->curr_char;
            str[1] = '\0';
            return token_init(str, ERROR, lexer->line, lexer->colmn, lexer->index, lexer->index);
        }*/
        //value[size] = '\0';
  //      printf("%c", lexer->curr_char); 
        value[size] = lexer->curr_char;
        size += 1;
        value = realloc(value, sizeof(char) * size + 1);
        value[size] = '\0';

         
        Lexer_next(lexer);
    }
    Lexer_back(lexer, 1);
    //printf("test : %s", value);
    //
    //
    return Token_initNumber(isNeg?atof(value) * -1:atof(value), value, lexer->line, lexer->colmn);
}

static Token *Lexer_parseString(Lexer *lexer){
    // printf("\nstring is the prob\n");
    if(lexer->curr_char != '"')
        return NULL;

    char *value = calloc(1, sizeof(char));
    size_t size = 0;
    Lexer_next(lexer);
    while(lexer->curr_char != '"'){
        
        value[size] = lexer->curr_char;
        size += 1;
        value = realloc(value, sizeof(char) * (size+1)); 
              

        Lexer_next(lexer);
        
    }
    
    value = realloc(value, size * sizeof(char));
    value[size] = '\0';
    
    
    //printf("string : %s", value);c
    return Token_initID(TT_STRING, value, lexer->line, lexer->colmn);
}

static Token *Lexer_parseSymbol(Lexer *lexer){
    


    char *value = calloc(1, sizeof(char));
    size_t size = 0;
     
    while(lexer->curr_char != ' ' && lexer->curr_char != '\n' && lexer->curr_char != '\t' && (isalpha(lexer->curr_char) || isdigit(lexer->curr_char) && size != 0)){
        value[size] = lexer->curr_char;
        size += 1;
        value = realloc(value, sizeof(char) * (size+1));

        Lexer_next(lexer);
    }
    Lexer_back(lexer, 1);

    value[size] = '\0';
    printf("%s", value);
    return Token_initID(TT_ID, value, lexer->line, lexer->colmn);
}


static Vector *Lexer_collectUpTo(Lexer *lexer, char startChar, char character, size_t skipNewLines){
    


    Vector *tokens = Vector_init(sizeof(Token));
    
    if(lexer->curr_char == startChar)
        Lexer_next(lexer);

    while(lexer->curr_char != character && lexer->curr_char != '\0'){ 
        
        if(lexer->curr_char == character)
            return tokens; 

        if(lexer->curr_char == '\t' || lexer->curr_char == ' '){
            Lexer_next(lexer);
            continue;
        }
        if(lexer->curr_char == '\n' && skipNewLines){
            Lexer_next(lexer);
            continue;
        }
        if(lexer->curr_char == '\0'){
            break;
        }

        if(lexer->curr_char == character)
            return tokens;
        Token *tok = Lexer_parse(lexer);
        
        Vector_push(tokens, (void*)tok);
        Lexer_next(lexer);
    }
    return tokens;
}

static Token *Lexer_parse(Lexer *lexer){

    switch(lexer->curr_char){
        case '\t':
            Lexer_skipWhiteSpace(lexer);
            return Lexer_parse(lexer);
        case ' ':
            Lexer_skipWhiteSpace(lexer);
            return Lexer_parse(lexer);
        case '+':
            return Token_initSymbol(TT_PLUS, '+', "+", lexer->line, lexer->colmn);
        case '-':
            if(Lexer_getNext(lexer) == '|'){
                Lexer_next(lexer);
                while(lexer->curr_char != '\n'){
                    Lexer_next(lexer);
                }
                Lexer_next(lexer);
                return Lexer_parse(lexer);
            }
            return Token_initSymbol(TT_MINUS, '-', "-", lexer->line, lexer->colmn);
        case '*':
            return Token_initSymbol(TT_MULT, '*', "*", lexer->line, lexer->colmn);
        case '/':
            return Token_initSymbol(TT_DIV, '/', "/", lexer->line, lexer->colmn);
        case '\0':
            return Token_initSymbol(TT_EOT, '\0', "\0", lexer->line, lexer->colmn);
        case '(':
            return Token_initSymbol(TT_LPAREN, '(', "(", lexer->line, lexer->colmn);
        case ')':
            return Token_initSymbol(TT_RPAREN, ')', ")", lexer->line, lexer->colmn);
        case '{':
            Lexer_next(lexer);
            return Token_initBlock(Lexer_collectUpTo(lexer,'{', '}', 0), "codeBlock");
        case '}':
            Lexer_next(lexer);
            return Lexer_parse(lexer);
        case '!':
            if(Lexer_getNext(lexer) == '='){
                Lexer_next(lexer);
                return Token_initSymbol(TT_NOTEQUAL, '!', "!=", lexer->line, lexer->colmn);
            }
            return Token_initSymbol(TT_NOT, '!', "!", lexer->line, lexer->colmn);
        case '=':
            if(Lexer_getNext(lexer) == '='){
                Lexer_next(lexer);
                return Token_initSymbol(TT_DOUBLEEQUAL, '=', "==", lexer->line, lexer->colmn);
            }

            return Token_initSymbol(TT_EQUAL, '=', "=", lexer->line, lexer->colmn);
        case '&':
            if(Lexer_getNext(lexer) == '&'){
                Lexer_next(lexer);
                return Token_initSymbol(TT_AND, '&', "&&", lexer->line, lexer->colmn);
            }
            return Token_initSymbol(TT_BW_AND, '&', "&", lexer->line, lexer->colmn);
        case '|':
            if(Lexer_getNext(lexer) == '|'){
                Lexer_next(lexer);
                return Token_initSymbol(TT_OR, '|', "||", lexer->line, lexer->colmn);
            }
            return Token_initSymbol(TT_BW_OR, '|', "||", lexer->line, lexer->colmn);
        case '<':
            switch(Lexer_getNext(lexer)){
                case '=':
                    Lexer_next(lexer);
                    return Token_initSymbol(TT_LESSTHANOREQUAL, '<', "<=", lexer->line, lexer->colmn);
                case '<':
                    Lexer_next(lexer);
                    return Token_initSymbol(TT_BW_LEFT, '<', "<<", lexer->line, lexer->colmn);
            }

            return Token_initSymbol(TT_LESSTHAN, '<', "<", lexer->line, lexer->colmn);

        case '>':
            switch(Lexer_getNext(lexer)){
                case '=':
                    Lexer_next(lexer);
                    return Token_initSymbol(TT_GREATEROREQUAL, '>', ">=", lexer->line, lexer->colmn);
                case '>':
                    Lexer_next(lexer);
                    return Token_initSymbol(TT_BW_RIGHT, '>', ">>", lexer->line, lexer->colmn);
            }

            return Token_initSymbol(TT_GREATERTHAN, '>', ">", lexer->line, lexer->colmn);

        case '^':
            return Token_initSymbol(TT_BW_XOR, '^', "^", lexer->line, lexer->colmn);
        case '~':
            return Token_initSymbol(TT_BW_NOT, '~', "~", lexer->line, lexer->colmn);
        case '%':
            return Token_initSymbol(TT_MOD, '%', "%", lexer->line, lexer->colmn);
        case ',':
            return Token_initSymbol(TT_COMMA, ',', ",", lexer->line, lexer->colmn);
        case '"':
            return Lexer_parseString(lexer);
        case ':':
            if(Lexer_getNext(lexer) == ':'){
                Lexer_next(lexer);
                return Token_initSymbol(TT_CAST, ':', "::", lexer->line, lexer->colmn);
            }
            return Token_initSymbol(TT_COLON, ':', ":", lexer->line, lexer->colmn);
        case '\n':
            //lexer->colmn = 0;
            //lexer->line ++;
            /*if(Lexer_getNext(lexer) != '\n'){


                Lexer_next(lexer);
                return Lexer_parse(lexer);
            }*/

            while(lexer->curr_char == '\n')
                Lexer_next(lexer);
            Lexer_back(lexer, 1);

            printf("\nreturn ;p");
            return Token_initSymbol(TT_NEWLINE, 'n', "new line", lexer->line, lexer->colmn);

    }
    if(isdigit(lexer->curr_char) || lexer->curr_char == '.'){
        return Lexer_parseNumber(lexer, 0);
    }

/*******************************************************
 *  THIS IS WHERE THE PROBLEM IS <3 
 * *****************************************************/



    if(isalpha(lexer->curr_char)){
        Token* tok = Lexer_parseSymbol(lexer);
        if(Lexer_getNext(lexer) == '('){
            Lexer_next(lexer);
            tok = Token_initFuncCall(Lexer_collectUpTo(lexer,'(', ')', 1), tok->stringValue);
             

            Lexer_skipWhiteSpace(lexer);


            Token_convertToReservedFunction(tok);

            return tok; 
        }

        Lexer_skipWhiteSpace(lexer);
        Token_convertToReservedFunction(tok);
        
        return tok;

    }

    printf("\n\n\nRETURN LEXER CURR CHAR ERROR : %c", lexer->curr_char); 
    char str[] = {lexer->curr_char,'\0'};
    Token *tok = Token_initSymbol(TT_ERROR, lexer->curr_char, str, lexer->line, lexer->colmn);
    Token_print(tok);

    return tok; 
}



void Lexer_start(Lexer *lexer){
    printf("\ntest Lexer Start\n\n\n");
    if(lexer == NULL){
        printf("\nNULL LEXER EXIT");
        exit(1);
    }
    
    
    
    while(lexer->curr_char != '\0' && lexer->index < lexer->end){ 
        Token *tok = Lexer_parse(lexer);
        printf("\nPRUNT");
        printf("\nToken : %s|%c", tok->stringValue, tok->data.symbol); 
        if(tok->type != TT_ERROR){
            Vector_push(lexer->tokens, (void*)tok);
        }
        Lexer_next(lexer);
         

    }
    
    printf("\nmid test Lexer");
    
    for(int i = 0; i < lexer->tokens->size; i++){
        Token *tok = (Token*)Vector_get(lexer->tokens, i);
        printf("\ntok %d | %s\n\tvalue : %f", i, Token_types_map[tok->type], tok->data.value);
        printf("\033[0;34m");
        printf("\033[0m");
    }
    printf("\033[0;32m");
    printf("\n============================================================LEXER PHASE ENDED ============================================================\n");
    printf("\033[0m");   
}
