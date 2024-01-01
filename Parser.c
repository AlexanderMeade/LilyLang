#include "./include/Parser.h"

#include <stdlib.h>
#include "./ASTNode.c"

#define Parser_next(parser, steps) \
    parser->index += steps;\
    parser->curr_token =  (Token*)Vector_get(parser->tokens, parser->index); 

#define Parser_getNext(parser) ((Token*)Vector_get(parser->tokens, parser->index+1))




static Parser *Parser_init(Vector *tokens){
    Parser *parser = calloc(1, sizeof(Parser));
    parser->tokens = tokens;
    parser->curr_token = (Token*)Vector_get(parser->tokens, 0);
    parser->index = 0;
    parser->inExpr = 0;
    parser->hault = 0;
    return parser;
}

static void Parser_error(Parser *parser){
    printf("\nPARSER ERROR AT INDEX %zu", parser->index);
    printf("\nPARSER TOKEN ERROR DUMP");
    Token_print(parser->curr_token);
    exit(1);
}

static void Parser_eat(Parser *parser, Token_types type){
    if(parser->index + 1 >= parser->tokens->size && !Parser_isRecursiveType(type)){
        return;
    }

    if (parser->curr_token->type == type){
        Parser_next(parser, 1);
        return;
    }
    printf("\nERROR AT PARSER_EAT\n");
    Parser_error(parser);
    
}


static ASTNode *Parser_factor(Parser *parser){
    //printf("\ntest at Parser_factor\n");
    Token *tok = parser->curr_token;
    ASTNode *n = NULL;
    printf("\n PARSER_FACTOR : \n");
    Token_print(parser->curr_token);
    //printf("\nParser_factor |  val : %s | %s", tok->stringValue, Token_types_map[tok->type]);

    switch(tok->type){
        case TT_NUMBER:    

        case TT_STRING:
//        case TT_ID:
        case TT_CONTINUE:
        case TT_BREAK:
            Parser_eat(parser, tok->type);
            return ASTNode_init(tok);
        //tokens with nestedStatements
        case TT_ID: 
            if(parser->index + 1 < parser->tokens->size)
                if(Parser_getNext(parser)->type == TT_ID){
                    Parser_eat(parser, tok->type);
                    return ASTNode_BinOp_init(NULL, Parser_factor(parser),tok);

                }

            Parser_eat(parser, tok->type);    
            return ASTNode_init(tok);
        case TT_FUNCCALL: 
            n = ASTNode_init(tok);
            n->nestedStatements = Parser_parseTokenVector(Token_splitAt(tok->data.args, TT_COMMA)); 
            Parser_eat(parser, tok->type);
            return n;

        case TT_BLOCK:
            n = ASTNode_init(tok);
            Vector *trimmedVector = Token_removeNeighborNewLines(tok->data.args); 
            for(int i = 0; i < trimmedVector->size; i++){
                Vector_push(n->nestedStatements,Parser_parse(Vector_get(trimmedVector, i)));
            }

                             

            Parser_eat(parser, tok->type);
            return n;
       
        case TT_IF:
            Parser_eat(parser, tok->type);
            n = ASTNode_BinOp_init(NULL, Parser_factor(parser),tok);
            Vector_push(n->nestedStatements, Parser_parse(tok->data.args));
            return n; 
        //unary tokens with nested statements
        case TT_ASSEMBLY_MOD:
        case TT_RETURN:
        case TT_LOOP:
            Parser_eat(parser, tok->type);
            return ASTNode_BinOp_init(NULL, Parser_expr(parser), tok);
        case TT_MINUS:
        case TT_ELSE:
            Parser_eat(parser, tok->type);
            return ASTNode_BinOp_init(NULL, Parser_factor(parser),tok);
        case TT_NOT: 
        case TT_I32:
        case TT_STR:
        case TT_USE:
            Parser_eat(parser, tok->type);
            return ASTNode_BinOp_init(NULL, Parser_factor(parser),tok);
        case TT_BW_NOT: 
            Parser_eat(parser, tok->type);
            return ASTNode_BinOp_init(NULL, Parser_factor(parser),tok);
        case TT_LPAREN:
            Parser_eat(parser, TT_LPAREN);
            n = Parser_expr(parser);
            Parser_eat(parser, TT_RPAREN);
            return n;
        
    }     

    printf("\nASTNODE_factor HAS RETURNED A NULL RESULT with %s\n", Token_types_map[tok->type]);
    printf("\nASTNODE_FACTOR TOKEN DUMP\n");
    Token_print(parser->curr_token);
    exit(1);
    return NULL;
}

static ASTNode *Parser_term(Parser *parser){
    //printf("\ntest at Parser_term\n");'
    ASTNode *node = Parser_factor(parser);
    
    while(Token_isTerm(parser->curr_token->type)){
        Token *tok = parser->curr_token;
        switch(tok->type){
            case TT_MULT:
            case TT_DIV:
            case TT_MOD:
            case TT_BW_LEFT:
            case TT_BW_RIGHT:
            case TT_BW_AND:
            case TT_BW_OR:
            case TT_BW_XOR:
                Parser_eat(parser, tok->type);
                break;

        }
        node = ASTNode_BinOp_init(node, Parser_factor(parser), tok);
    }
    return node;
}

static ASTNode *Parser_expr(Parser *parser){
    if(parser->curr_token->type == TT_NEWLINE){
        return NULL;    

    }
    //printf("\ntest at Parser_expr\n");
    ASTNode *node = Parser_term(parser);


    while(Token_isOp(parser->curr_token->type)){
        Token *tok = parser->curr_token;

        switch(tok->type){ 
            case TT_PLUS:
                Parser_eat(parser, tok->type);
                break;
            case TT_CAST:
                Parser_eat(parser, tok->type);

                break;

            case TT_DOUBLEEQUAL:
            case TT_NOTEQUAL:
            case TT_LESSTHAN:
            case TT_GREATERTHAN:
            case TT_LESSTHANOREQUAL:
            case TT_GREATEROREQUAL:
                Parser_eat(parser, tok->type);
                parser->inExpr = 1;
                node = ASTNode_BinOp_init(node,  Parser_expr(parser),tok);

                continue;
            case TT_MINUS:
                Parser_eat(parser, tok->type);
                break;


            case TT_EQUAL:

                Parser_eat(parser, tok->type);
                node = ASTNode_BinOp_init(node, Parser_expr(parser), tok);
                continue;

            
            case TT_OR:
            case TT_AND:

                if(parser->inExpr){
                    parser->inExpr = 0;
                    return node; 
                }
                Parser_eat(parser, tok->type);
                node = ASTNode_BinOp_init(node,  Parser_expr(parser),tok);
                continue;
 
        }
        node = ASTNode_BinOp_init(node, Parser_term(parser), tok);
    }
    return node;
}

Vector *Parser_parseTokenVector(Vector *vector){
    Vector *nodes = Vector_init(sizeof(ASTNode)); 
    for(int i = 0; i < vector->size; i++){
        void *node = (void*)Parser_parse(Vector_get(vector, i));
        if(!node)
            continue;
        Vector_push(nodes, node);  
    }
    return nodes;
}



ASTNode *Parser_parse(Vector *tokens){
    printf("\ntest at Parser_parse\nToken set for parse : \n");
    for(int i = 0; i < tokens->size; i++){
        Token_print((Token*)Vector_get(tokens, i));
    } 
    ASTNode *node = Parser_expr(Parser_init(tokens));
    printf("\nend at Parser_parse\n");
    return node;
}

void PrintNodes(ASTNode *node, int again){
        
    ASTNode_print(node);
    if(node){
        PrintNodes(node->left,1);
        PrintNodes(node->right,1);
    }

}

void Parser_exit(){

}

int Parser_isRecursiveType(Token_types type){
    switch(type)
        case TT_MINUS:
        case TT_ASSEMBLY_MOD:
        case TT_NOT:
        case TT_IF:
        case TT_RETURN:
        case TT_LOOP:
        case TT_ELSE:
            return 1;
    return 0;
    //return type == TT_MINUS || type == TT_ASSEMBLY_MOD || type == TT_NOT || type == TT_IF || type == TT_RETURN;
}




