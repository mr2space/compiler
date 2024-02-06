%{
// count the type of number
#include <stdio.h>
int integerCount = 0;
int floatCount = 0;
int exponentCount = 0;
%}

%%
[0-9]+                          { printf("Integer: %s\n", yytext); integerCount++; }
[0-9]+"."[0-9]+                 { printf("Float: %s\n", yytext); floatCount++; }
[0-9]+"."[0-9]+[eE][+-]?[0-9]+ { printf("Exponential: %s\n", yytext); exponentCount++;}
.                               { /* Ignore other characters */ }
%%

int main() {
    yylex();
    printf("Integer Count %d \n", integerCount);
    printf("Float Count %d \n", floatCount);
    printf("Exponential Count %d \n", exponentCount);
    return 0;
}

int yywrap(){
    return 1;
}