%pointer

%option noyywrap
%option yylineno

%{
  /* put C declarations here*/
%}

%%
[0-9]+ { return INT; }
"+"  { return PLUS; }
[ \t\n\r]+   {}
.        { return ERROR; }

