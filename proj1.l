/*
Alex Langhart
Project 1
*/

%pointer

%option noyywrap
%option yylineno

%{
  /* put C declarations here*/
%}

%%
"//".*$                 { return COMMENT; }
";"                     { return SEMICOLON; }
"("                     { return LPAREN; }
")"                     { return RPAREN; }
","                     { return COMMA; }
"{"                     { return LBRACE; }
"}"                     { return RBRACE; }
"["                     { return LBRACKET; }
"]"                     { return RBRACKET; }
"="                     { return ASSIGN; }
"<"                     { return LT; }
">"                     { return GT; }
"<="                    { return LE; }
">="                    { return GE; }
"=="                    { return EQ; }
"!="                    { return NE; }
"+"                     { return PLUS; }
"-"                     { return MINUS; }
"*"                     { return MULT; }
"/"                     { return DIV; }
"!"                     { return NOT; }
"&&"                    { return AND; }
"||"                    { return OR; }
"if"                    { return IF; }
"else"                  { return ELSE; }
"while"                 { return WHILE; }
"int"                   { return INT; }
"float"                 { return FLOAT; }
[a-zA-Z_][a-zA-Z0-9_]*  { return ID; }
[0-9]+                  { return ICONST; }
[0-9]+\.[0-9]+          { return FCONST; }
[ \t\n\r]+              { } 
.                       { return ERROR; }

