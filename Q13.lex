%{
// check if given number is odd or even and if even print square of that number and if even print double of that number
#include <stdio.h>
%}

%%
[0-9]+   {
            int number = atoi(yytext);
            if (number % 2 == 0) {
                printf("Even: Square is %d", number*number);
            } else {
                printf("Odd: double is %d", 2*number);
            }
         }
.        { /* Ignore other characters */ }
%%

int main() {
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}