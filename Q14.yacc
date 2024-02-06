%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
int yyerror(char *s);

%}

%token token1 token2

%%

S: A A;
A: token1 A
 | token2
 | ;

%%

int main() {
    printf("Enter Expression: ");
    if (yyparse() == 0) {
        printf("Expression is Valid\n");
    } else {
        printf("Expression is Invalid\n");
    }
    return 0;
}

int yyerror(char *s) {
}
