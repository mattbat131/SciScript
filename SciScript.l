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
"if"			{ return IF; }
"else"			{ return ELSE; }
"while"         { return WHILE; }
"do"            { return DO; }
"for"           { return FOR; }
(([0-9]+(\.[0-9]*)?)|([0-9]*\.[0-9]+)) {yylval.dval = atof(yytext); return DOUBLE;}
[a-z][a-z0-9]*		{ yylval.ivar = *yytext; return NAME; }
[-+()=/*\n]		{ return *yytext; }
\               { ; }
\n              { nextLine(); }
\t              { ; }
"//".*\n        { nextLine(); }
.				yyerror("Invalid Character");

%%
int yywrap(void) {
    return 1;
}

