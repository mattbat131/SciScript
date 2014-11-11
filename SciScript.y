%{
#include <stdio.h>
int yylex(void);
void yyerror(char *);
double val[26];
%}

%union { double dval; int ivar; }
%token <dval> DOUBLE 
%token <ivar> NAME
%token VARIABLE
%type <dval> var

%left '+' '-'
%left '*' '/'

%%
program:
		program statement '\n'				
		|			
		;
statement:
	var						{ printf("%g\n", $1); }
	|	NAME '=' var	{ val[$1] = $3; }

var:
		DOUBLE		
		| NAME				{ $$ = val[$1]; }		
		| var '+' var		{ $$ = $1 + $3; }		 	
		| var '-' var		{ $$ = $1 - $3; }
		| var '*' var		{ $$ = $1 * $3; }
		| var '/' var		{ $$ = $1 / $3; }
		| '(' var ')'		{ $$ = $2; }
		;


%%
void yyerror(char *str)
{
	fprintf(stderr, "error: %s\n" ,str);
}

int main(void)
{
	yyparse();
	return 0;
}
