%{
//wap in lex to insert line number in input file
#include<stdio.h>
int line_number = 1;
FILE *inputFile;
FILE *outputFile;
%}

line .*\n

%%
{line} {fprintf(outputFile, "%d. %s", line_number, yytext); line_number++;}
%%

int main(){
    inputFile = fopen("input.txt","r");
    outputFile = fopen("output.txt", "w");
    yyin = inputFile;
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}