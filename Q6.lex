%{
// write a lex program to convert lower case keyword into upper case keyword
#include <stdio.h>
#include <string.h>
%}

%%
(for|if|else|while|main)  {for(int i=0 ; yytext[i]; i++){printf("%c", yytext[i]-32);} }
.        { printf("not a keyword\n"); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}