%token ERROR
%token INT
%left  PLUS

%{
 /* put your c declarations here */
#define YYDEBUG 1
%}

%%
expr : expr PLUS expr | INT
%%
    #include "./lex.yy.c"

