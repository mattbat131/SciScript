SciScript
=========

Programming Language For Science

=========
lex SciScript.l
yacc -d SciScript.y
cc SciScript.l SciScript.y -o SciScript
./SciScript

=========
TODO
1. Add all tokens to SciScript.l
2. Implement variables
3. Implement conditions
4. Implement functions
5. Test...


==========
Syntax:
SciScript.sci

#define name(param)  func(var)    

func datatype name(param)
{
  return datatype;
}

//#define takes input and calls one or more functions for output
//Functions may call other functions


SciScript.scr
//Can define variables and utilizes #define form .sci
name(var);

EX:

SciScript.sci
class Multiply 
{
  #define multiply(int x, int y) mult(x, y);

  func(int a, int b) 
  {
   return a * b;
  }
}

SciScript.scr
import Multiply;

a = 3;
b = 6;

mutliply(a, b)

OUTPUT
>> 18

==========
