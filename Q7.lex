%{
// write a lex program to convert lower case word into upper case if it is vowel
#include <stdio.h>
#include <string.h>
%}

%%
[aeiou] {for(int i=0 ; yytext[i]; i++){printf("%c", yytext[i]-32);} }
.        { printf("%s", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}