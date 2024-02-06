%{
// count number of letter, words and lines from a file
#include <stdio.h>

int wordCount = 0;
int letterCount = 0;
int lineCount = 0;
%}

%%
\n          { lineCount++; }
[a-zA-Z]+   { wordCount++; letterCount = letterCount + yyleng; }
. {;}
%%

int main() {
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Number of words: %d\n", wordCount);
    printf("Number of letters: %d\n", letterCount);
    printf("Number of lines: %d\n", lineCount);
    
    return 0;
}

int yywrap(){
    return 1;
}