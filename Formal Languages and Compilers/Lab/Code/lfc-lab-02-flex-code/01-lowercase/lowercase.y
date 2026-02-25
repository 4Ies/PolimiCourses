%{
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
}%

%option noyywrap

[A-Z] {printf("%c", tolower(yytext[0]));}

%%

int main(int argc, char *argv[])
{
  return yylex();
}
