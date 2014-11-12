%{
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
int yylex(void);
void yyerror(char *);
int val[26];
int sVal(char s);
void modifyVal(char symbol, int value);
%}

%union { int num; char id; }
%start line
%token RPAR LPAR RBRACK LBRACK EQU NE GT GE LT LE SEMICOLON IF ELSE WHILE DO FOR POUND DEFINE FUNC CLASS
%token <num> NUMBER 
%token <id> NAME
%type <num> line exp term
%type <id> assignment

%left '+' '-'
%left '*' '/'

%%
line:
	    assignment ';'				{ ; }	
		|	line assignment ';'		{ ; }		
		;
		
assignment:
		NAME '=' exp { modifyVal($1, $3); }
		;
		
exp:	
	term		 	{$$ = $1;}
	| exp '+' term	{$$ = $1 + $2;}
	| exp '-' term	{$$ = $1 - $2;}
	;

term: 
	NUMBER		 {$$ = $1;}
	| NAME		 {$$ = sVal($1);}	
	;
 

%%
void yyerror(char *str)
{
	fprintf(stderr, "error: %s\n" ,str);
}

int getSIndex(char t) 
{
	int index = -1; 
	if (islower(t))
	{
		index = t - 'a' + 26;
	} else if (isupper(t))
	{
		index = t - 'A';
	}
	return index;
}

int sVal(char s)
{
	int x = getSIndex(s);
	return val[x];
}

void modifyVal(char symbol, int value)
{
	int x = getSIndex(symbol);
	val[x] = value;
}

int main(void)
{
	int i;
	for(i = 0; i < 52; i++) 
	{
		val[i] = 0;
	}
	yyparse();
	return 0;
}
