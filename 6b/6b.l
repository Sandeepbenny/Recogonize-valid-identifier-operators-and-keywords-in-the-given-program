%{
#include<stdio.h>
#include"y.tab.h"
extern int yylval;
%}
%%
[+\-\*V] {printf("operator: %s \n",yytext); return OP;}
[0-9]+ {yylval = atoi(yytext); printf("DIgit is %d",yylval); return DIGIT;}
 "void"|"int"|"main"|"printf" {printf("keyword: %s",yytext); return   KEY;}
 .;
%%
int yywrap()
{ 
 return 1;
}

