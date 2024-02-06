%{
// lex program to copy content form one file to another file 
#include <stdio.h>

%}

%%
.    { fprintf(yyout, "%s", yytext); }
%%

int main() {
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
    return 0;
}



int yywrap(){
    return 1;
}