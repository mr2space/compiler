%{
// wap in lex to count the number of keywords and indentifier in file
#include <stdio.h>

int indentifierCount = 0;
int keywordCount = 0;
%}

letter [a-zA-Z]
digit [0-9]

%%
(if|else|while|for|return|main) {keywordCount++;}
{letter}({letter}|{digit})* {indentifierCount++;}
.*           { ; }
%%

int main() {
    yyin = fopen("input.txt","r");
    yylex();
    printf("no of indentifier %d \n", indentifierCount);
    printf("no of keywords %d \n", keywordCount);
    return 0;
}

int yywrap(){
    return 1;
}
