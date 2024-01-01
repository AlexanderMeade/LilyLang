#include "./include/ASTNode.h"
#include "./Token.c"

#include <stdlib.h>

ASTNode *ASTNode_init(Token *token){
    ASTNode *astNode = calloc(1, sizeof(ASTNode));
    astNode->token = token;
    astNode  ->left = NULL;
    astNode->right = NULL;
    astNode->nestedStatements = calloc(1, sizeof(Vector));
    astNode->pad = 0;
    return astNode;
}

ASTNode *ASTNode_BinOp_init(ASTNode *left, ASTNode *right, Token *token){
    ASTNode *astNode = calloc(1, sizeof(ASTNode));
    astNode->token = token;
    astNode->left = left;
    astNode->right = right;
    astNode->nestedStatements = calloc(1, sizeof(Vector));
    astNode->pad = 0;
    return astNode;
}


/*
 *  function calls are cyan
 *  code blocks are yellow
 *  Node information will be green
 * */

void ASTNode_printNestedStatements(ASTNode *node){   
    //printf("\n\n\nNODE TYPE : %s, VECTOR SIZE : %zu", Token_types_map[node->token->type], node->nestedStatements->size);
    //
    //
    printf("\n\nnode children are %s :\n { ", node->token->stringValue);
    for(int i = 0; i < node->nestedStatements->size; i++){
         ASTNode *n = (ASTNode*)Vector_get(node->nestedStatements, i);
            
         printf("\n\t at [%d] : %s ", i, n->token->stringValue);
    }
    for(int i = 0; i < node->nestedStatements->size; i++){
        if(((ASTNode*)Vector_get(node->nestedStatements, i))->pad)
            continue;
        printf("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t type : %s\n\t\t\t\t\t\t\t\t\t\t===================nested statements %d===================\n", node->token->stringValue, i);

        ASTNode *n = (ASTNode*)Vector_get(node->nestedStatements, i);

        ASTNode_print(n);

        printf("\n\t\t\t\t\t\t\t\t\t\t type : %s\n\t\t\t\t\t\t\t\t\t\t===================end nested statements %d===================\n", node->token->stringValue, i);       
    }
    printf("\n\nnode children are %s :\n } ", node->token->stringValue);


}
void ASTNode_print(ASTNode *node){
    if(!node)
        return;

    if(node->pad == 1 || node->token->type == TT_NUMBER)
        return;
    node->pad = 1; 
    printf("\033[0;36m");
    printf("\nNode->value : %f\nNode->type : %s\nNode->stringValue : %s\n\tline : %zu\n\tcolmn : %zu", node->token->data.value, Token_types_map[node->token->type], node->token->stringValue, node->token->line, node->token->colmn);
    printf("\nNode->token : \n");
    
    size_t hasLeft = 0;
    size_t hasRight = 0;


    //Token_print(node->token);
    
//    
    switch(node->token->type){
        case TT_FUNCCALL:
        case TT_BLOCK   :
        case TT_IF:
            //printf("\n\n\nnode %s args size %zu:\n", node->token->stringValue, node->token->data.args->size);
            ASTNode_printNestedStatements(node);
            break;
    }

        printf("\033[0m"); 

    if(!node->left){
        printf("\033[0;31m");

        printf("\n\tNode->left is NULL");
        printf("\033[0m");
    }else {
        printf("\033[0;32m");
        
    printf("\n\tNode->left->value : %f\n\tNode->left->type : %s\n\tNode->left->stringValue : %s\n\tnode->left->line : %zu\n\tnode->left->colmn : %zu", node->left->token->data.value, Token_types_map[node->left->token->type], node->left->token->stringValue, node->left->token->line, node->left->token->colmn);
    printf("\nNode->token : \n");
        printf("\n\tNode->left->token : \n");

        switch(node->left->token->type){
            case TT_FUNCCALL:
            case TT_BLOCK:
            case TT_IF:
                //printf("\n\n\nnode %s args size %zu:\n", node->token->stringValue, node->token->data.args->size);
                ASTNode_printNestedStatements(node->left);
                break;
        }       

        printf("\033[0m");
        hasLeft = 1; 
    }
    printf("\n");
    if(!node->right){
            printf("\033[0;31m");
            printf("\n\tNode->right is NULL");
            printf("\033[0m");
    }else {
            printf("\033[0;32m");

            printf("\n\tNode->right->value : %f\n\tNode->right->type : %s\n\tNode->right->stringValue : %s\n\tnode->right->line : %zu\n\tnode->right->colmn : %zu", node->right->token->data.value, Token_types_map[node->right->token->type], node->right->token->stringValue, node->right->token->line, node->right->token->colmn);
        switch(node->right->token->type){
            case TT_FUNCCALL:
            case TT_BLOCK:
            case TT_IF:
                //printf("\n\n\nnode %s args size %zu:\n", node->token->stringValue, node->token->data.args->size);
                ASTNode_printNestedStatements(node->right);
                break;
        }       

        printf("\033[0m");

        hasRight = 1;
    
    }
    printf("\033[0;36m");


         printf("\033[0m"); 

        if(!node->left && !node->right){
            printf("\n\nEND %s\n\n", node->token->stringValue);
            return;
        }

        ASTNode_print(node->left);

        ASTNode_print(node->right);           
  
}




