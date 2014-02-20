/*
Alex Langhart
Project 1
*/

%token ERROR
%token ID
%token SEMICOLON
%token LPAREN
%token RPAREN
%token COMMA
%token LBRACE
%token RBRACE
%token LBRACKET
%token RBRACKET
%token ASSIGN
%token LT
%token GT
%token LE
%token GE
%token EQ
%token NE
%left  PLUS
%left MINUS
%left MULT
%left DIV
%right NOT
%left AND
%left OR
%token IF
%token ELSE
%token WHILE
%token INT
%token FLOAT
%token ICONST
%token FCONST
%token COMMENT

%{
 /* put your c declarations here */
#define YYDEBUG 1
%}

%%

expr : expr expr
    | stmt
    | block_type
    | epsilon

stmt : decl SEMICOLON
    | express SEMICOLON

block_type : condblock
    | whileblock

block : LBRACE expr RBRACE
    | expr

decl : type vars

express : var ASSIGN val_expr
    | val_expr

val_expr : LPAREN val_expr RPAREN
    | val_expr PLUS val_expr
    | val_expr MINUS val_expr
    | val_expr MULT val_expr
    | val_expr DIV val_expr
    | cond
    | var
    | const

condblock : IF LPAREN cond RPAREN block

whileblock : WHILE LPAREN cond RPAREN block

cond : NOT cond
    | LPAREN cond RPAREN
    | cond AND cond
    | cond OR cond
    | val_expr LT val_expr
    | val_expr GT val_expr
    | val_expr LE val_expr
    | val_expr GE val_expr
    | val_expr EQ val_expr
    | val_expr NE val_expr

type : INT
    | FLOAT

vars : vars COMMA var
    | var

var : ID
    | ID array

array : LBRACKET ICONST RBRACKET array
    | LBRACKET ID RBRACKET array
    | epsilon

const : ICONST
    | FCONST

epsilon : 


%%
    #include "./lex.yy.c"

