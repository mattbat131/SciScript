/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     RPAR = 258,
     LPAR = 259,
     RBRACK = 260,
     LBRACK = 261,
     EQU = 262,
     NE = 263,
     GT = 264,
     GE = 265,
     LT = 266,
     LE = 267,
     SEMICOLON = 268,
     IF = 269,
     ELSE = 270,
     WHILE = 271,
     DO = 272,
     FOR = 273,
     POUND = 274,
     DEFINE = 275,
     FUNC = 276,
     CLASS = 277,
     NUMBER = 278,
     NAME = 279
   };
#endif
/* Tokens.  */
#define RPAR 258
#define LPAR 259
#define RBRACK 260
#define LBRACK 261
#define EQU 262
#define NE 263
#define GT 264
#define GE 265
#define LT 266
#define LE 267
#define SEMICOLON 268
#define IF 269
#define ELSE 270
#define WHILE 271
#define DO 272
#define FOR 273
#define POUND 274
#define DEFINE 275
#define FUNC 276
#define CLASS 277
#define NUMBER 278
#define NAME 279




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 12 "SciScript.y"
{ int num; char id; }
/* Line 1529 of yacc.c.  */
#line 99 "y.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

