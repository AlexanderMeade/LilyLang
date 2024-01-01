#ifndef TOKEN_H
#define TOKEN_H

#include "./Vector.h"
#include <stdio.h>


const char *Token_types_map[] = {
    "TT_ERROR",
    "TT_PLUS",
    "TT_MINUS",
    "TT_MUL",
    "TT_DIV",
    "TT_EOT",
    "TT_LPAREN",
    "TT_RPAREN",
    "TT_NUMBER",
    "TT_EQUAL",
    "TT_SYMBOL",
    "TT_NEWLINE",
    "TT_MOD",
    "TT_LESSTHAN", //curr
    "TT_GREATERTHAN",
    "TT_LESSTHANOREQUAL",
    "TT_GREATEROREQUAL",
    "TT_DOUBLEEQUAL",
    "TT_NOTEQUAL",
    "TT_AND", // curr
    "TT_OR",
    "TT_NOT",
    "TT_BW_AND",
    "TT_BW_OR",
    "TT_BW_LEFT",
    "TT_BW_RIGHT",
    "TT_BW_NOT",
    "TT_BW_XOR",
    "TT_STRING",
    "TT_ID",
    "TT_BLOCK",
    "TT_FUNCCALL",
    "TT_COMMA",

    "TT_ASSEMBLY_MOD",
    "TT_IF",
    "TT_RETURN",
    "TT_COLON",
    "TT_CAST",
    "TT_LOOP",
    "TT_CONTINUE",
    "TT_ELSE",
    "TT_BREAK",
    "TT_I32",
    "TT_STR",
    "TT_USE",

    "TT_VECTORCLOSE"
};



typedef enum{
    TT_ERROR = 0, // n\a
    TT_PLUS = 1, // +
    TT_MINUS = 2, // -
    TT_MULT = 3, // *
    TT_DIV = 4, // /
    TT_EOT = 5, // \0
    TT_LPAREN = 6, // (
    TT_RPAREN = 7, // )
    TT_NUMBER = 8, // 1~9
    TT_EQUAL = 9,  // =
    TT_SYMBOL = 10, // a

    TT_NEWLINE = 11, // \n
    TT_MOD = 12, // %
    TT_LESSTHAN = 13, // <
    TT_GREATERTHAN = 14, // >
    TT_LESSTHANOREQUAL = 15, // <=
    TT_GREATEROREQUAL = 16, // >=
    TT_DOUBLEEQUAL = 17, // ==
    TT_NOTEQUAL = 18, // !=
    TT_AND = 19, // &&
    TT_OR = 20, // ||
    TT_NOT = 21, // !
    TT_BW_AND = 22, // &
    TT_BW_OR = 23, // |
    TT_BW_LEFT = 24,// <<
    TT_BW_RIGHT = 25,// >>
    TT_BW_NOT = 26, // @
    TT_BW_XOR = 27, // ^
    TT_STRING = 28,
    TT_ID = 29,
    TT_BLOCK = 30,
    TT_FUNCCALL = 31,
    TT_COMMA = 32,

    TT_ASSEMBLY_MOD = 33,
    TT_IF = 34,
    TT_RETURN = 35,
    TT_COLON = 36,
    TT_CAST = 37,
    TT_LOOP = 38,
    TT_CONTINUE = 39,
    TT_ELSE = 40,
    TT_BREAK = 41,
    TT_I32  = 42,
    TT_STR = 43,
    TT_USE = 44,
    TT_VECTORCLOSE = 55
}Token_types;



typedef union Data_U{
    double value;
    int iValue;
    char symbol;
    Vector *args;
}Data;

typedef struct {
    Data data;
    Token_types type;
    char *stringValue;

    size_t line;
    size_t colmn;
}Token;

Token *Token_initSymbol(Token_types type, char symbol, char *stringValue, size_t line, size_t colmn);

Token *Token_initID(Token_types type, char *id, size_t line, size_t colmn);

Token *Token_initNumber(double num, char *stringValue, size_t line, size_t colmn);

Token *Token_initFuncCall(Vector *vect, char *stringValue);

Token *Token_initBlock(Vector *vect, char *stringValue);

Token *Token_initList(Vector *vect);

void Token_convertToReservedFunction(Token *token);

void Token_printFuncCall(Token *token);

void Token_printBlock(Token *token);

void Token_printList(Token *token);

void Token_print(Token *token);

Vector *Token_removeNeighborNewLines(Vector *tokens);

Vector *Token_splitAt(Vector *tokens, Token_types type);

int Token_isToken(char c);

int Token_isOp(Token_types type);

int Token_isTerm(Token_types type);

Token_types Token_isSymbolOperation(char *str);
#endif
