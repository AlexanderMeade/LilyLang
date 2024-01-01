#ifndef ASTNODE_H
#define ASTNODE_H

#include "./Token.h"
#include "./Vector.h"


typedef struct ASTNode_struct{
    Token *token;
    struct ASTNode_struct *left;
    struct ASTNode_struct *right;
    Vector *nestedStatements;
    size_t pad;
}ASTNode;

ASTNode *ASTNode_init(Token *token);

ASTNode *ASTNode_BinOp_init(ASTNode *left, ASTNode *right, Token *token);

void ASTNode_printNestedStatements(ASTNode *node);

void ASTNode_print(ASTNode *node);


#endif
