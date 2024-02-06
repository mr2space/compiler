%{
// wap in lex to compare a set of character as per the regular language {letter}({letter}|{digit})*
#include <stdio.h>

int patternMatchCount = 0;
%}

letter [a-zA-Z]
digit [0-9]

%%
{letter}({letter}|{digit})* {patternMatchCount++;}
.*           { ; }
%%

int main() {
    yylex();
    printf("no of indentifier %d \n", patternMatchCount);
    return 0;
}

int yywrap(){
    return 1;
}
