#ifndef LEXER_H
#define LEXER_H

#include "./Token.h"
#include "./Vector.h"

typedef struct {
    Vector *tokens;
    size_t index; 
    char *content;
    char curr_char;
    size_t end;
    size_t ignoreTrails;

    size_t line;
    size_t colmn;
}Lexer;

Lexer *Lexer_init(char *content, size_t end);

void Lexer_skipWhiteSpace(Lexer *lexer);

static void Lexer_next(Lexer *lexer);

static void Lexer_skipNewLines(Lexer *lexer);

static Token *Lexer_parseSymbol(Lexer *lexer);

static Token *Lexer_parseNumber(Lexer *lexer, size_t isNeg);

static Token *Lexer_parseString(Lexer *lexer);

static Vector *Lexer_collectUpTo(Lexer *lexer, char startChar, char character, size_t skipNewLines);

static Token *Lexer_parse(Lexer *lexer);

void Lexer_start(Lexer *lexer);

#endif
