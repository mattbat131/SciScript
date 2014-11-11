%{
#include <stdlib.h>
#include <stdio.h>
#include "y.tab.h"
void yyerror(char *); 
%}
%%
"("				{ return RPAR; }
")"				{ return LPAR; }
"{"				{ return RBRACK; }
"}"				{ return LBRACK; }
"=="			{ return EQU; }
"!="			{ return NE; }
">"				{ return GT; }
">="			{ return GE; }
"<"				{ return LT; }
"<="			{ return LE; }
";"				{ return SEMICOLON; }
"IF"			{ return IF; }
"ELSE"			{ return ELSE; }
(([0-9]+(\.[0-9]*)?)|([0-9]*\.[0-9]+)) {yylval.dval = atof(yytext); return DOUBLE;}
[a-z][a-z0-9]*		{ yylval.ivar = *yytext; return NAME; }
[-+()=/*\n]		{ return *yytext; }
[ \t]+			;
.				yyerror("Invalid Character");

%%
int yywrap(void) {
    return 1;
}

