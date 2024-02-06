%{
// write a lex program to convert lower case words into upper case words
#include <stdio.h>
#include <string.h>
%}

%%
[a-z]+   {for(int i=0 ; yytext[i]; i++){printf("%c", yytext[i]-32);} }
.        { printf("%s", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}