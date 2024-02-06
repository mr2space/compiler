%{
#include <stdio.h>

int wordCount = 0;
int letterCount = 0;
int lineCount = 0;
%}

%%
[a-zA-Z]    { letterCount++; }
\n          { lineCount++; }
[a-zA-Z]+   { wordCount++; }
%%

int main() {
    yylex();
    
    printf("Number of words: %d\n", wordCount);
    printf("Number of letters: %d\n", letterCount);
    printf("Number of lines: %d\n", lineCount);
    
    return 0;
}

int yywrap(){
    return 1;
}