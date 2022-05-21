%{
#include<stdio.h>
#include<stdlib.h>
int dig=0,id=0,op=0,key=0;
extern FILE *yyin;
int yylex();
int yyerror();
%}
%token DIGIT ID KEY OP
%%
input : DIGIT input {dig++;}
|ID input {id++;}
|OP input {op++;}
|KEY input {key++;}
|DIGIT input {dig++;}
|ID input {id++;}
|OP input {op++;}
|KEY {key++;}
;
%%
// #include<stdio.h>
void main(){
yyin=fopen("sample.c","r");
yyparse();
printf("key count : %d",key);
printf("operator count : %d",op);
printf("identifier count = %d",id);
printf("Digit count=%d",dig);
}
int yyerror()
{
printf("Invalid");
}

